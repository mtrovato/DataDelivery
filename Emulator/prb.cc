#include <stdio.h>
#include <vector>
#include <iostream>
#include <iomanip>
#include <math.h> 
#include <inttypes.h> 
#include <fstream>
#include <sstream>
#include <bitset>


using namespace std;

#define MASK_32B    0xFFFFFFFFUL //32
#define MASK_24B    0xFFFFFFUL //24
#define MASK_28B    0xFFFFFFFUL //28
#define MASK_12B    0xFFFUL //12
#define MASK_11B    0x7FFUL //11
#define MASK_9B    0x1FFUL //9
#define MASK_8B    0xFFUL //8
#define MASK_5B    0x1FUL //4
#define MASK_4B    0xFUL //4
#define MASK_3B    0x7UL //3
#define MASK_1B    0x1UL //1

#define NSTUBS    18
#define NEVT    1 //redefine such I can run over all events present in the CSV file (right now number is static) //allow tool to select one event only for debugging


#define SOFR_RX    0xffffffff
#define ZEROS      0x00000000
#define SOFR       0x20000000
#define EOFR       0x40000000


#define RTMINLAY5    0
#define RTMAXLAY5    2
#define RTMINLAY6    3 
#define RTMAXLAY6    8 
#define RTMINLAY7    9
#define RTMAXLAY7    14 
#define RTMINLAY8   15
#define RTMAXLAY8   20
#define RTMINLAY9   21 
#define RTMAXLAY9   28 
#define RTMINLAY10  29
#define RTMAXLAY10  39




//#include "common.hh"
//#include "matrix.hh"



//NEED to INCLUDE SOMEHOW INFO ABOUT ENABLES (eg en_lx in serialize). 

unsigned long binary(int number, bool verbose); 
void parsecsvfile(std::ifstream& ifs, vector<vector<unsigned long> > *RX, vector<vector<unsigned long> > *PRB2, bool verbose);
void storeRX(unsigned int RTMmin, unsigned int RTMmax, vector<vector<unsigned long> > RXin, vector<vector<vector<unsigned long> > > *RXout, bool verbose);
void cleanupRX(vector<vector<vector<unsigned long> > > RXin, vector<vector<vector<unsigned long> > > *RXout, bool verbose);
void loadRXfromTxt(std::ifstream& f_txt, unsigned int RTMmin, unsigned int RTMmax,  vector<vector<vector<unsigned long> > > *RXout, bool verbose);
void UnrollRXData(std::ifstream& f_txt, vector<vector<vector<unsigned long> > > *RX_L_unroll, vector<vector<vector<unsigned long> > > *RX_R_unroll, bool verbose);
void RetrieveInfoFromInputFile(vector<vector<vector<unsigned long> > > RX_unroll_in, unsigned int BX, vector<vector<vector<unsigned long> > > *stubBXidvec, vector<vector<vector<unsigned long> > > *stubPosvec, vector<vector<vector<unsigned long> > > *stubBendvec, bool verbose);
void storePRB2output(unsigned long evtNum, unsigned int layN, vector<vector<unsigned long> > PRBin, vector<unsigned long> *PRB2out, bool verbose);
void DATA_GEN_RX(vector<vector<vector<unsigned long> > > RX_in, const unsigned int nGTH, vector<vector<vector<unsigned long> > > *Moduleout, vector<vector<vector<unsigned long> > > *CIC_Rout, vector<vector<vector<unsigned long> > > *CIC_Lout, bool verbose);
void SIPO(vector<vector<vector<unsigned long> > > RX_in, const unsigned int nGTH, vector<vector<vector<unsigned long> > > *SIPO_out, bool verbose);
void ModuleCICFilling(vector<vector<vector<unsigned long> > > SIPOin, const unsigned int nGTH, vector<vector<vector<unsigned long> > > *Moduleout, vector<vector<vector<unsigned long> > > *CIC_Rout, vector<vector<vector<unsigned long> > > *CIC_Lout, bool verbose);
void UnrollCICData(vector<vector<vector<unsigned long> > > CICin, unsigned int nGTH, vector<vector<vector<unsigned long> > > *CICout, bool verbose);
void serialize_for_PRBF1_debugdata(vector<vector<vector<unsigned long> > > CICUnrollin, unsigned int nGTH, unsigned long int layer, vector<vector<unsigned long> > *Serial_PRBF1out, bool verbose);
void serialize_for_PRBF1(vector<vector<vector<unsigned long> > > CICUnrollin, unsigned int nGTH, unsigned int RTMmin, unsigned long int layer, bool isR, vector<vector<unsigned long> > *Serial_PRBF1out, bool verbose);
void From_PRBFraw_to_PRBF1(vector<vector<unsigned long> > Serial_PRBF1in, const unsigned int BX, vector<vector<unsigned long> > *PRB1out, bool verbose);
void From_PRBF1_to_PRBF2_v2_debug(vector<vector<unsigned long> > PRBF1_1in, vector<vector<unsigned long> > PRBF1_2in,  vector<vector<unsigned long> > *PRB2out, bool verbose);
void From_PRBF1_to_PRBF2_v2(vector<vector<unsigned long> > PRBF1_1in, vector<vector<unsigned long> > PRBF1_2in,  vector<vector<unsigned long> > *PRB2out, bool verbose);
void ClonePRBF1Data_debug(vector<vector<unsigned long> > PRBF1_1in, vector<vector<unsigned long> > *PRBF1_1out_0, vector<vector<unsigned long> > *PRBF1_1out_1, vector<vector<unsigned long> > *PRBF1_1out_2, vector<vector<unsigned long> > *PRBF1_1out_3, vector<vector<unsigned long> > *PRBF1_1out_4, vector<vector<unsigned long> > *PRBF1_1out_5, vector<vector<unsigned long> > *PRBF1_1out_6, vector<vector<unsigned long> > *PRBF1_1out_7, bool verbose);
void ClonePRBF1Data(vector<vector<unsigned long> > PRBF1_1in, vector<vector<unsigned long> > *PRBF1_1out_0, vector<vector<unsigned long> > *PRBF1_1out_1, vector<vector<unsigned long> > *PRBF1_1out_2, vector<vector<unsigned long> > *PRBF1_1out_3, vector<vector<unsigned long> > *PRBF1_1out_4, vector<vector<unsigned long> > *PRBF1_1out_5, vector<vector<unsigned long> > *PRBF1_1out_6, vector<vector<unsigned long> > *PRBF1_1out_7, bool verbose);
void findEvtNum(vector<vector<vector<unsigned long> > > RXin, vector<unsigned long> *evtnumout, vector<bool> *undefinedEvtNumout, bool verbose);
unsigned int checkdifferences(vector<vector<unsigned long> > PRB2, vector<vector<unsigned long> > PRB2ref, vector<bool> undefinedEvtNum, bool verbose);

void retrievemoduleladder(std::ifstream& ifs, unsigned int imod, unsigned long *modidloc, unsigned long *ladidloc, unsigned long *modladidloc, bool verbose);
unsigned long locallayer(unsigned long layer);


unsigned int compareoutputref(vector<vector<unsigned long> > PRBF2, vector<vector<vector<unsigned long> > > stubBXidin_L_ref, vector<vector<vector<unsigned long> > > stubPosin_L_ref, vector<vector<vector<unsigned long> > > stubBendvec_L_ref, vector<vector<vector<unsigned long> > > stubBXidin_R_ref, vector<vector<vector<unsigned long> > > stubPosin_R_ref, vector<vector<vector<unsigned long> > > stubBendvec_R_ref, const unsigned int BX, unsigned int RTMmin, unsigned int RTMmax, bool verbose);

unsigned int sanitycheck(vector<vector<unsigned long> > PRBF2, unsigned int layN, bool verbose);

int main(int argc, char ** argv) { 
  int verbose = false;

  //flags to be be setup by the user
  unsigned InpMode = 1; //0 RX, PRB2 from CSV; 1 RX from Zhen's file (eachline has 32b). NB: input mode 1 is used only to predict what we will get in the F/W
  bool EvtEncoded = false; //Silvia encodes the evtnum is her debug data. May not happen in Zhen's data. Use true only if  InpMode = 0 and using Silvia's data
  const unsigned int BX=0; //BX to select
  //  const int nev = 1;
  unsigned int layN=4; //0,1,2,3,4,5 for layerN=5,6,7,8,9,10
  if(layN<0 || layN>5){
    cout<<"layN must be within 0 and 5 "<<endl;
    exit(1);
  }
  unsigned int RTMmin, RTMmax;    
  if(layN==0){
    RTMmin = RTMINLAY5;
    RTMmax = RTMAXLAY5;
  }
  if(layN==1){
    RTMmin = RTMINLAY6;
    RTMmax = RTMAXLAY6;
  }
  if(layN==2){
    RTMmin = RTMINLAY7;
    RTMmax = RTMAXLAY7;
  }
  if(layN==3){
    RTMmin = RTMINLAY8;
    RTMmax = RTMAXLAY8;
  }
  if(layN==4){
    RTMmin = RTMINLAY9;
    RTMmax = RTMAXLAY9;
  }
  if(layN==5){
    RTMmin = RTMINLAY10;
    RTMmax = RTMAXLAY10;
  }
  
  unsigned long int layer; 
  if(layN==0)
    layer = 0x5;
  else if(layN==1)
    layer = 0x6;
  else if(layN==2)
    layer = 0x7;
  else if(layN==3)
    layer = 0x8;
  else if(layN==4)
    layer = 0x9;
  else if(layN==5)
    layer = 0xa;

  //

  const unsigned int nGTH = RTMmax-RTMmin+1; //

  cout<<"****************************"<<endl;
  cout<<"*****Parameters/Input*******"<<endl;
  cout<<"****************************"<<endl;


  cout<<"+++++++++++++++++++"<<endl;
  cout<<"layer "<<dec<<layer<<"; RTM in ["<<dec<<RTMmin<<", "<<RTMmax<<"]"<<" => nGTH "<<dec<<nGTH<<endl;
  cout<<endl;


  //data_gen_RX_s[GTH][iclk] events start with FFFF FFFF multiple events can be stored
  vector<vector<vector <unsigned long> > > data_gen_RX_s_bc;   data_gen_RX_s_bc.clear(); //before cleaning for the aurora pauses
  vector<vector<vector <unsigned long> > > data_gen_RX_s;   data_gen_RX_s.clear(); //aside from [0]=FFFFFFFF, [1] are the most signifcant bits [18]the lowes (reading from left to right) evt mod stub
  //  vector<vector<vector<unsigned long> > > data_p_sipo;     data_p_sipo.clear(); //evt mod stub

  vector<vector<vector<unsigned long> > > stubBXidin_L;  stubBXidin_L.clear(); //dec
  vector<vector<vector<unsigned long> > > stubPosin_L;   stubPosin_L.clear(); //11b
  vector<vector<vector<unsigned long> > > stubBendvec_L; stubBendvec_L.clear(); //5b
  vector<vector<vector<unsigned long> > > stubBXidin_R;  stubBXidin_R.clear(); //dec
  vector<vector<vector<unsigned long> > > stubPosin_R;   stubPosin_R.clear(); //11b
  vector<vector<vector<unsigned long> > > stubBendvec_R; stubBendvec_R.clear(); //5b


  vector<vector<vector<unsigned long> > > module_rxall, CIC_R_rxall, CIC_L_rxall;    module_rxall.clear(); CIC_R_rxall.clear(); CIC_L_rxall.clear(); //evt mod stubs

  vector<vector<vector<unsigned long> > > CIC_R_rx_unrollall; CIC_R_rx_unrollall.clear(); //evt, mod, stub
  vector<vector<vector<unsigned long> > > CIC_L_rx_unrollall; CIC_L_rx_unrollall.clear(); //evt, mod, stub

  vector<vector<vector<unsigned long> > > serial_layer_to_PRBF1_1all; serial_layer_to_PRBF1_1all.clear(); //event, module, stubs
  vector<vector<unsigned long> > serial_layer_to_PRBF1_1_0; serial_layer_to_PRBF1_1_0.clear(); //event, module+stubs (not splitting according to the module #)
  vector<vector<unsigned long> > serial_layer_to_PRBF1_2_0; serial_layer_to_PRBF1_2_0.clear(); //event, module+stubs (not splitting according to the module #)

  vector<vector<unsigned long> > PRBFraw_to_PRBF1_1_0; PRBFraw_to_PRBF1_1_0.clear(); //outside vector for different events
  vector<vector<unsigned long> > PRBFraw_to_PRBF1_2_0; PRBFraw_to_PRBF1_2_0.clear(); //outside vector for different events


  vector<vector<unsigned long> > PRBF1_to_PRBF2_v2; PRBF1_to_PRBF2_v2.clear(); //evt, stubs

  vector<vector<unsigned long> > PRB_reference; PRB_reference.clear();


  vector<vector<unsigned long> > RX, PRB2;

  ////////ila csv parser////////
  string str_csv;
  if(InpMode==0){
    str_csv = "./my_hw_ila_data_file_40RX_6PRB2out_3GBps_timingmet/waveform.csv";
    char csv[100];
    ifstream f_csv;



    RX.clear();  PRB2.clear();

    if(verbose)
      cout<<"str_csv "<<str_csv<<endl;
    
    f_csv.open(str_csv.c_str());
    
    
    
    if(f_csv.is_open()) {
      parsecsvfile(f_csv, &RX, &PRB2, false);
      f_csv.close();
    }
    else{
      cout<<"Error file "<<f_csv<<" not found "<<endl;
      exit(1);
    }

    if(verbose)
      cout<<"size (or #lines csv-1) RX, PRB2 "<<dec<<RX.size()<<" "<<dec<<PRB2.size()<<endl;
    /////////////////////////////
  }//if(InpMode==0)

  ///////////store RX stubs of same GTHs into dedicated std vectors////////
  if(InpMode==0){
    storeRX(RTMmin, RTMmax, RX, &data_gen_RX_s_bc, false);
    cleanupRX(data_gen_RX_s_bc,&data_gen_RX_s,false);
  }
  else if(InpMode==1){
    vector<vector<vector <unsigned long> > > RXout_R;   RXout_R.clear(); //not used yet in PRB logic

    //    string str_txt = "./NeutrinoPU200_8BX.txt";
    string str_txt = "./DataSourcingFile/DataSourcingBoard00_MT.txt";
    ifstream f_txt;

    if(verbose)
      cout<<"str_txt "<<str_txt<<endl;
    
    f_txt.open(str_txt.c_str());
    
    
    
    if(f_txt.is_open()) {
      cout<<"file "<<str_txt<<endl;
      //      loadRXfromTxt(f_txt,&data_gen_RX_s,&RXout_R,true)
      loadRXfromTxt(f_txt, RTMmin, RTMmax, &data_gen_RX_s_bc, false);
      //select only GTH of interest
      
      //incorporate evrything in the foor loop below in loadRXfromTxt
      for(unsigned int iev=0; iev<data_gen_RX_s_bc.size(); iev++){
	vector<vector<unsigned long> > data_gen_RX_s_tmp; data_gen_RX_s_tmp.clear();
	for(unsigned int igth=0; igth<data_gen_RX_s_bc[iev].size(); igth++){
	  if(igth>=RTMmin && igth<=RTMmax){
	    data_gen_RX_s_tmp.push_back(data_gen_RX_s_bc[iev][igth]);
	  }//if(igth>=RTMmin && igth<=RTMmax)
	}//for(int igth=0; igth<data_gen_RX_s_bc[igth].size; iev++)
	data_gen_RX_s.push_back(data_gen_RX_s_tmp);
	data_gen_RX_s_tmp.clear();
      }//for(int iev=0; iev<data_gen_RX_s_bc.size(); iev++)
      
      f_txt.close(); f_txt.open(str_txt.c_str()); //otherwise the file will be at the end
      vector<vector<vector<unsigned long> > > RX_L_unroll, RX_R_unroll; RX_L_unroll.clear(); RX_R_unroll.clear();
      UnrollRXData(f_txt, &RX_L_unroll, &RX_R_unroll,false);

      if(verbose){
	for(int iev=0; iev<RX_L_unroll.size(); iev++){
	  for(int igth=0; igth<RX_L_unroll[iev].size(); igth++){
	    cout<<"RX_L_unroll["<<dec<<iev<<"]["<<igth<<"][ "<<endl;
	    for(int is=0; is<RX_L_unroll[iev][igth].size(); is++){
	      cout<<RX_L_unroll[iev][igth][is];
	      if((is+1)%32==0) cout<<endl;
	    }//for(int is=0; is<RX_L_unroll[iev][igth].size(); is++)
	    cout<<endl;
	  }//for(int igth=0; igth<RX_L_unroll[iev].size(); igth++)
	  cout<<endl;
	}//for(int iev=0; iev<RX_L_unroll.size(); iev++)
      }
      
      if(verbose)	{
	for(int iev=0; iev<RX_R_unroll.size(); iev++){
	  for(int igth=0; igth<RX_R_unroll[iev].size(); igth++){
	    cout<<"RX_R_unroll["<<dec<<iev<<"]["<<igth<<"][ "<<endl;
	    for(int is=0; is<RX_R_unroll[iev][igth].size(); is++){
	      cout<<RX_R_unroll[iev][igth][is];
	      if((is+1)%32==0) cout<<endl;
	    }//for(int is=0; is<RX_R_unroll[iev][igth].size(); is++)
	    cout<<endl;
	  }//for(int igth=0; igth<RX_R_unroll[iev].size(); igth++)
	  cout<<endl;
	}//for(int iev=0; iev<RX_L_unroll.size(); iev++)

      }//if(verbose)

      cout<<"+++++++++L++++++++++"<<endl;
      RetrieveInfoFromInputFile(RX_L_unroll, BX, &stubBXidin_L, &stubPosin_L, &stubBendvec_L, false);
      cout<<"+++++++++++++++++++"<<endl;
      cout<<endl;

      if(verbose){
  	for(int iev=0; iev<stubBXidin_L.size(); iev++){
	  for(int igth=0; igth<stubBXidin_L[iev].size(); igth++){
	    cout<<"stubBX (dec), stubPos (11b), stubBend (5b) L["<<dec<<iev<<"]["<<dec<<igth<<endl;
	    for(int is=0; is<stubBXidin_L[iev][igth].size(); is++){
	      cout<<dec<<stubBXidin_L[iev][igth][is]<<" ";
	      cout<<setfill('0')<<setw(3)<<hex<<stubPosin_L[iev][igth][is]<<" ";
	      cout<<setfill('0')<<setw(2)<<hex<<stubBendvec_L[iev][igth][is]<<", ";	    
	    }//for(int is=0; is<stubBXidin_L[iev][igth].size(); is++)
	    cout<<endl;
	  }//for(int igth=0; igth<stubBXidin_L[iev].size(); igth++)
	}//for(int iev=0; iev<stubBXidin_L.size(); iev++)
      }//if(verbose)

      cout<<"+++++++++R++++++++++"<<endl;
      RetrieveInfoFromInputFile(RX_R_unroll, BX, &stubBXidin_R, &stubPosin_R, &stubBendvec_R, false);
      cout<<"+++++++++++++++++++"<<endl;

      if(verbose){
  	for(int iev=0; iev<stubBXidin_R.size(); iev++){
	  for(int igth=0; igth<stubBXidin_R[iev].size(); igth++){
	    cout<<"stubBX (dec), stubPos (11b), stubBend (5b) R["<<dec<<iev<<"]["<<dec<<igth<<endl;
	    for(int is=0; is<stubBXidin_R[iev][igth].size(); is++){
	      cout<<dec<<stubBXidin_R[iev][igth][is]<<" ";
	      cout<<setfill('0')<<setw(3)<<hex<<stubPosin_R[iev][igth][is]<<" ";
	      cout<<setfill('0')<<setw(2)<<hex<<stubBendvec_R[iev][igth][is]<<", ";	    
	    }//for(int is=0; is<stubBXidin_R[iev][igth].size(); is++)
	    cout<<endl;
	  }//for(int igth=0; igth<stubBXidin_R[iev].size(); igth++)
	}//for(int iev=0; iev<stubBXidin_R.size(); iev++)
      }//if(verbose)
	

      
      f_txt.close();
    }
    else{
      cout<<"Error file "<<f_txt<<" not found "<<endl;
      exit(1);
    }



  }

  // {
  //   cout<<"-------After storeRX--------"<<endl;
  //   unsigned int iev=15;
  //   for(int is=0; is<NSTUBS; is++){
  //     for(int igth2=0; igth2<data_gen_RX_s[iev].size(); igth2++)
  // 	cout<<setfill('0')<<setw(8)<<hex << data_gen_RX_s[iev][igth2][is]<<" ";
  //     cout<<endl;
  //   }
  //   cout<<"-------Done--------"<<endl;
  // }



  vector<unsigned long> evtNum; evtNum.clear();
  vector<bool> undefinedEvtNum; //one bool per event
  if(EvtEncoded){
    findEvtNum(data_gen_RX_s, &evtNum, &undefinedEvtNum, false);
    ///////////store PRB2 outputs of a given layer into a dedicated std vector (will be used as reference///
  //  unsigned long evtNum=0x9;
  }
  if(InpMode==0){
    for(int iev=0; iev<NEVT; iev++){
      vector<unsigned long> PRB_reference_tmp;
      storePRB2output(evtNum[iev], layN, PRB2, &PRB_reference_tmp, false);
      PRB_reference.push_back(PRB_reference_tmp);
      PRB_reference_tmp.clear();
    }
  }
  ////////////////////////////////

  cout<<endl;
  cout<<endl;
  cout<<endl;
  cout<<"***************"<<endl;
  cout<<"*****PRB*******"<<endl;
  cout<<"***************"<<endl;




  cout<<endl;
  cout<<"-----------------------------------------------"<<endl;
  cout<<"RX"<<endl;
  for(int iev=0; iev<data_gen_RX_s.size(); iev++){
    cout<<"+++++++iev "<<dec<<iev<<endl;
    if(verbose)
      cout<<"data_gen_RX_s["<<dec<<iev<<"] size "<<dec<<data_gen_RX_s[iev].size()<<endl;
    for(int igth=0; igth<data_gen_RX_s[iev].size(); igth++){
      if(verbose)
	cout<<"data_gen_RX_s["<<dec<<igth<<"] size "<<dec<<data_gen_RX_s[iev][igth].size()<<endl;
      for(int is=0; is<data_gen_RX_s[iev][igth].size(); is++)
	cout<<setfill('0')<<setw(8)<<hex << data_gen_RX_s[iev][igth][is]<<" ";
      //cout<<bitset<32>(data_gen_RX_s[iev][igth][is])<<" ";
      cout<<endl;
    }//for(int igth=0; igth<data_gen_RX_s.size(); igth++)
  }//for(int iev=0; iev<data_gen_RX_s.size(); iev++)


  DATA_GEN_RX(data_gen_RX_s, nGTH, &module_rxall, &CIC_R_rxall, &CIC_L_rxall, false);

 
  if(verbose){
    cout<<"-----------------------------------------------"<<endl;
    for(int iev=0; iev<NEVT; iev++){
      cout<<"++++++iev "<<iev<<endl;
      for(int imod=0; imod<nGTH; imod++){
	// cout<<"module_rx["<<imod<<"] ";
	// for(int i=0; i<module_rxall[iev][imod].size(); i++)	
	//   cout << setfill('0')<<setw(8)<<hex << module_rxall[iev][imod][i]<<" ";
	// cout<<"CIC_R_rx["<<imod<<"] ";
	// for(int i=0; i<CIC_R_rxall[iev][imod].size(); i++)	
	//   cout << setfill('0')<<setw(8)<<hex << CIC_R_rxall[iev][imod][i]<<" ";
	cout<<"CIC_L_rx["<<imod<<"] ";
	for(int i=0; i<CIC_L_rxall[iev][imod].size(); i++)	
	  //	  cout << setfill('0')<<setw(8)<<hex << CIC_L_rxall[iev][imod][i]<<" ";
	  cout << bitset<32>(CIC_L_rxall[iev][imod][i])<<" ";
	cout<<endl;
      }//for(int imod=0; imod<nGTH; imod++)
    }//for(int iev=0; iev<NEVT; iev++)    
  }

  if(verbose)
    cout<<"******R******"<<endl;
  UnrollCICData(CIC_R_rxall, nGTH, &CIC_R_rx_unrollall, false);  
  if(verbose)
    cout<<"******L******"<<endl;
  UnrollCICData(CIC_L_rxall, nGTH, &CIC_L_rx_unrollall, false);  

  if(verbose){
    cout<<"******R******"<<endl;
    for(unsigned int iev=0; iev<NEVT; iev++){
      cout<<"++++ievt "<<iev<<endl;
      cout<<" CICout size "<<dec<<CIC_R_rx_unrollall[iev].size()<<endl;
      for(unsigned int imod=0; imod<nGTH; imod++){
	cout<<" CIC_R_rx_unrollall["<<dec<<imod<<"] size "<<dec<<CIC_R_rx_unrollall[iev][imod].size()<<endl;
	cout<<" CIC_R_rx_unrollall["<<dec<<iev<<"]["<<dec<<imod<<"][ "<<endl;
	for(unsigned int is=0; is<CIC_R_rx_unrollall[iev][imod].size(); is++){
	  //testing the unrolling: very verbose
	  cout<<hex<<CIC_R_rx_unrollall[iev][imod][is];
	  if((is+1)%32==0) cout<<endl;
	}      
	cout<<endl;
      }
    }//for(int iev=0; iev<NEVT; iev++)

    cout<<"******L******"<<endl;
    for(unsigned int iev=0; iev<NEVT; iev++){
      cout<<"++++ievt "<<iev<<endl;
      cout<<" CICout size "<<dec<<CIC_L_rx_unrollall[iev].size()<<endl;
      for(unsigned int imod=0; imod<nGTH; imod++){
	cout<<" CIC_L_rx_unrollall["<<dec<<imod<<"] size "<<dec<<CIC_L_rx_unrollall[iev][imod].size()<<endl;
	cout<<" CIC_L_rx_unrollall["<<dec<<iev<<"]["<<dec<<imod<<"][ "<<endl;
	for(unsigned int is=0; is<CIC_L_rx_unrollall[iev][imod].size(); is++){
	  //testing the unrolling: very verbose
	  cout<<hex<<CIC_L_rx_unrollall[iev][imod][is];
	  if((is+1)%32==0) cout<<endl;
	}      
	cout<<endl;
      }
    }//for(int iev=0; iev<NEVT; iev++)
    
  }  
  
 


  //  serialize_for_PRBF1_debugdata(CIC_R_rx_unrollall, nGTH, layer, &serial_layer_to_PRBF1_1_0, false);
  //  serialize_for_PRBF1_debugdata(CIC_L_rx_unrollall, nGTH, layer, &serial_layer_to_PRBF1_2_0, false);

  if(verbose)
    cout<<"R"<<endl;
  serialize_for_PRBF1(CIC_R_rx_unrollall, nGTH, RTMmin, layer, true, &serial_layer_to_PRBF1_1_0, false);
  if(verbose)
    cout<<"L"<<endl;
  serialize_for_PRBF1(CIC_L_rx_unrollall, nGTH, RTMmin, layer, false, &serial_layer_to_PRBF1_2_0, false);


  if(verbose){
    cout<<"-----------------------------------------------"<<endl;

    cout<<"serial_layer_to_PRBF1_1_0 ";
    for(int iev=0; iev<serial_layer_to_PRBF1_1_0.size(); iev++){     
      cout<<"serial_layer_to_PRBF1_1_0["<<dec<<iev<<"]["<<endl;
      for(int igths=0; igths<serial_layer_to_PRBF1_1_0[iev].size(); igths++){     
	if(layN<3)//PS
	  cout << bitset<35>(serial_layer_to_PRBF1_1_0[iev][igths])<<" ";
	else
	  cout << bitset<30>(serial_layer_to_PRBF1_1_0[iev][igths])<<" ";
      }
      cout<<endl;
    }
    cout<<endl;

    for(int iev=0; iev<serial_layer_to_PRBF1_2_0.size(); iev++){     
      cout<<"serial_layer_to_PRBF1_2_0["<<dec<<iev<<"]["<<endl;
      for(int igths=0; igths<serial_layer_to_PRBF1_2_0[iev].size(); igths++){     
	if(layN<3)//PS
	  cout << bitset<35>(serial_layer_to_PRBF1_2_0[iev][igths])<<" ";
	else
	  cout << bitset<30>(serial_layer_to_PRBF1_2_0[iev][igths])<<" ";
      }
      cout<<endl;
    }
    cout<<endl;
  }    
  



  From_PRBFraw_to_PRBF1(serial_layer_to_PRBF1_1_0, BX, &PRBFraw_to_PRBF1_1_0, false);
  From_PRBFraw_to_PRBF1(serial_layer_to_PRBF1_2_0, BX, &PRBFraw_to_PRBF1_2_0, false);


  //  if(verbose){
    //    unsigned long sof = 0x20000000;
    //unsigned long eof = 0x40000000;
    unsigned long count = 0x00;
    cout<<"-----------------------------------------------"<<endl;
    cout<<"PRBFraw_to_PRBF1_1_0 "<<endl;
    for(int iev=0; iev<NEVT; iev++){ //PRBFraw_to_PRBF1_1_0.size()=NEVT
      cout<<"+++++iev "<<dec<<iev<<endl;
      cout << setfill('0')<<setw(8)<<hex << SOFR<<" ";
      //      for(int i=0; i<PRBFraw_to_PRBF1_1_0.size(); i++){	
      for(int is=0; is<PRBFraw_to_PRBF1_1_0[iev].size(); is++)
	cout << setfill('0')<<setw(8)<<hex << PRBFraw_to_PRBF1_1_0[iev][is]<<" ";
      
      cout << setfill('0')<<setw(8)<<hex << (EOFR | binary(PRBFraw_to_PRBF1_1_0[iev].size(),false)) <<" ";
      
      cout<<endl;
    }//for(int iev=0; iev<NEVT; iev++)
    cout<<"-----------------------------------------------"<<endl;
    cout<<"PRBFraw_to_PRBF1_2_0 "<<endl;
    for(int iev=0; iev<NEVT; iev++){ //PRBFraw_to_PRBF1_2_0.size()=NEVT
      cout<<"+++++iev "<<dec<<iev<<endl;
      cout << setfill('0')<<setw(8)<<hex << SOFR<<" ";
      for(int is=0; is<PRBFraw_to_PRBF1_2_0[iev].size(); is++)
	cout << setfill('0')<<setw(8)<<hex << PRBFraw_to_PRBF1_2_0[iev][is]<<" ";
      
      cout << setfill('0')<<setw(8)<<hex << (EOFR | binary(PRBFraw_to_PRBF1_2_0[iev].size(),false)) <<" ";
      
      cout<<endl;
    }//for(int iev=0; iev<NEVT; iev++)
    //}    
  


  From_PRBF1_to_PRBF2_v2(PRBFraw_to_PRBF1_1_0, PRBFraw_to_PRBF1_2_0, &PRBF1_to_PRBF2_v2, false);

  //NEED TO INCLUDE _2_0 SIGNALS

  cout<<endl;
  cout<<"-----------------------------------------------"<<endl;
  cout<<"OUTPUT"<<endl;
  cout<<"-----------------------------------------------"<<endl;
  cout<<"PRBF1_to_PRBF2_v2"<<endl;
  //  cout<<"PRBF1_to_PRBF2_v2.size() "<<dec<<PRBF1_to_PRBF2_v2.size()<<endl;  
  for(int iev=0; iev<PRBF1_to_PRBF2_v2.size(); iev++){	
    cout<<"+++++ev "<<dec<<iev<<" ";
    if(InpMode==0){
      if(undefinedEvtNum[iev] && EvtEncoded)
	cout<<" ******N.B****: event flagged bad becase evtNum is undefined";
    }
    cout<<endl;

    //    cout<<"# stubs "<<dec<<PRBF1_to_PRBF2_v2[iev].size()<<endl;
    //    cout << setfill('0')<<setw(8)<<hex << SOFR<<" ";
    
    for(int is=0; is<PRBF1_to_PRBF2_v2[iev].size(); is++)   
      cout << setfill('0')<<setw(8)<<hex << PRBF1_to_PRBF2_v2[iev][is]<<" ";
      //cout << bitset<32>(PRBF1_to_PRBF2_v2[iev][is])<<" ";
    
    //cout << setfill('0')<<setw(8)<<hex << (EOFR | binary(PRBF1_to_PRBF2_v2[iev].size(),false)) <<" ";
    
    cout<<endl;
  }

  if(InpMode==1){
    //compare output with reference from txt file
    unsigned int errcount = compareoutputref(PRBF1_to_PRBF2_v2,stubBXidin_L,stubPosin_L,stubBendvec_L,stubBXidin_R,stubPosin_R,stubBendvec_R,BX,RTMmin,RTMmax,false);
    unsigned int sanitycheckerr = sanitycheck(PRBF1_to_PRBF2_v2,layN,false);

    //    if(errcount>0)
    cout<<endl;
    cout<<endl;
    cout<<"*********************************************************"<<endl;
    cout<<"*********************************************************"<<endl;
    cout<<"************Number of mistmatch found with the input file"<<errcount<<endl;
    cout<<"************Number of obviously wrong outputs found"<<sanitycheckerr<<endl;
    cout<<"*********************************************************"<<endl;
    cout<<"*********************************************************"<<endl;


    if(verbose){
      cout<<"----------REFERENCE FROM INPUT TXT FILE-------"<<endl;
      for(int iev=0; iev<stubPosin_L.size(); iev++){
	cout<<"++++iev "<<iev<<endl;
	cout<<"stubPosin_L "<<endl;
	for(int igth=0; igth<stubPosin_L[iev].size(); igth++){
	  for(int is=0; is<stubPosin_L[iev][igth].size(); is++){
	    //	  cout << setfill('0')<<setw(3)<<hex << stubPosin_L[iev][igth][is] <<" "<<endl;
	    cout << dec << bitset<11>(stubPosin_L[iev][igth][is]) <<" "<<endl;
	  }
	}
      }//for(int iev=0; iev<stubPosin_L.size(); iev++)
    }
    
  }
  else if(InpMode==0){
    cout<<"----------REFERENCE FROM CSV FILE-------"<<endl;
    for(int iev=0; iev<PRB_reference.size(); iev++){
      cout<<"+++++evt "<<dec<<iev;
      if(undefinedEvtNum[iev] && EvtEncoded)
	cout<<" ******N.B****: event flagged bad becase evtNum is undefined";
      cout<<endl;
    
      if(PRB_reference[iev].size()==0){
	cout<<"No entry for this event in the scv file. N.B: one of out two events are thrown away in the F/W because of time multiplex"<<endl;
      }
      for(int i=0; i<PRB_reference[iev].size(); i++){	
	cout << setfill('0')<<setw(8)<<hex << PRB_reference[iev][i]<<" ";
      }
      cout<<endl;
    }//for(int iev=0; iev<PRB_reference.size(); iev++)


    
    cout<<"&&&&&&&&&&&&&&"<<endl;
    cout<<"&&&&&&&&&&&&&&"<<endl;
    cout<<"# discrepancies between emulation and F/W "<<checkdifferences(PRBF1_to_PRBF2_v2,PRB_reference,undefinedEvtNum,false)<<endl;    
    cout<<"&&&&&&&&&&&&&&"<<endl;
    cout<<"&&&&&&&&&&&&&&"<<endl;
  }//if(InpMode==0)

}
    

unsigned long binary(int number, bool verbose) {
  if(verbose)
    cout<<"-----binary-----"<<endl;

  unsigned long remainder=0x00;
  int count=0;

  if(verbose)
    cout<<"number "<<dec<<number<<endl;
  while(number/2>=1){
    remainder |= (number%2<<count) ;
    number = number/2;
    if(verbose)
      cout<<"number "<<dec<<number<<endl;
    count++;
  }

  return (number<<count | remainder);

}

void parsecsvfile(std::ifstream& ifs, vector<vector<unsigned long> > *RX, vector<vector<unsigned long> > *PRB2, bool verbose){
  /*assuming csv file is
one line explaining what the signals are (I will skip that)
one line for each clock with signal values separated by comma. Signals are

Clk,Clk,Trigger,data_RX_in[0],...,data_RX_in[39],PRBF2_out[0],...,PRBF2_out[5]


RX[iclk][igth] is the value of the igth-th RTM data at clk iclk-th
PRB2[iclk][igth] is the value of the igth-th PRB2 at clk iclk-th


clk/gth         0             1         2              ... 39
0             RX[0][0]    RX[0][1]   RX[0][2]
1             RX[1][0]    RX[1][1]   RX[1][2]    
2             RX[2][0]    RX[2][1]   RX[2][2]
3             RX[3][0]    RX[3][1]   RX[3][2]
  */                                                                                                            
                                                                                                                        


  if(verbose)
    cout<<"--------parsecsvfile------"<<endl;

  std::string line; int count=-1;

  vector<unsigned long> RX_tmp, PRB2_tmp;



  string value;
  int counter_inrow=-1;//counter of CSV in a given line
  int counter=-1; //counter of lines
  //  while ( ifs.good() )
  while(getline(ifs,line)){//read one line at the time
    counter++;
    if(counter==0) continue; //don't care about the header


    string str_tmp;

    if(verbose)
      cout<<"line "<<line<<endl;

    std::size_t pos1=0; 
    std::size_t pos2=0;
    
    std::size_t pos2_tmp;

    
    while(pos2<string::npos){//save each substrin embedded in two commas. First and last will be separated by one comma
      counter_inrow++;      

      if(counter_inrow==0) {
	pos2 = line.find(",");      
      }
      else{
	pos2_tmp = pos2;
	pos2 = line.find(",",pos2_tmp+1);      	
	pos1 = pos2_tmp;      
      }
      
      if(verbose)
	cout<<"pos1 pos2 "<<pos1<<" "<<pos2<<endl;

      if(counter_inrow==0)
	str_tmp = line.substr (0,pos2);
      else
	str_tmp = line.substr (pos1+1,pos2-(pos1+1));
      
      if(verbose)
	cout<<"str_tmp "<<str_tmp<<endl;


      if(verbose)
	cout<<"counter, counter_inrow "<<counter<<" "<<", "<<counter_inrow<<endl;


      
      if(counter_inrow>=3 && counter_inrow<43)
	RX_tmp.push_back(strtoul(str_tmp.c_str(),0,16));
      if(counter_inrow>=43 && counter_inrow<49)
	PRB2_tmp.push_back(strtoul(str_tmp.c_str(),0,16));


    }//while(pos2<string::npos)

    if(verbose){
      cout<<"RX_tmp.size() "<<dec<<RX_tmp.size()<<endl;
      cout<<"PRB2_tmp.size() "<<dec<<PRB2_tmp.size()<<endl;
      
      for(int i=0; i<RX_tmp.size(); i++)
	cout <<"RX "<<setfill('0')<<setw(8)<<hex << RX_tmp[i]<<endl;
      for(int i=0; i<PRB2_tmp.size(); i++)
	cout <<"PRB "<<setfill('0')<<setw(8)<<hex << PRB2_tmp[i]<<endl;

    }

    RX->push_back(RX_tmp);
    PRB2->push_back(PRB2_tmp);

    RX_tmp.clear();
    PRB2_tmp.clear();

    counter_inrow=-1;


    if(verbose)
      cout<<"counter, counter_inrow "<<counter<<" "<<", "<<counter_inrow<<endl;

    //if(counter==2)
    // exit(1);
    }//while(getline(ifs,line))


            
  


  if(verbose)
    cout<<"--------Done parsecsvfile------"<<endl;

}

void storeRX(unsigned int RTMmin, unsigned int RTMmax, vector<vector<unsigned long> > RXin, vector<vector<vector<unsigned long> > > *RXout, bool verbose){
  /*

RXin

clk/gth         0             1         2      ... 39
0             RX[0][0]    RX[0][1]   RX[0][2]
1             RX[1][0]    RX[1][1]   RX[1][2]    
2             RX[2][0]    RX[2][1]   RX[2][2]
3             RX[3][0]    RX[3][1]   RX[3][2]


RXout

gth/clk           0             1              2      ...
RTmin         RX[RTmin][0]  RX[RTmin][1]   RX[RTmin][2]
..            RX[...][0]     RX[...][1]    RX[...][2] 
RTmax         RX[RTmax][0]  RX[RTmax][1]   RX[RTmax][2] 

  */                                                                                                            
                                                                                                                       
  if(verbose)
    cout<<"--------storeRX------"<<endl;



  unsigned int nstubs = NSTUBS; //accounting for 18 stubs (including SOF) to match what is in SIPO_gen


  bool findSOF[40];
  unsigned int countst[40];
  unsigned int countevt[40];
  //  vector<unsigned long> RXin_tmp[40]; 
  unsigned int RX3D[NEVT][40][NSTUBS];

  for(int is=0; is<40; is++){
    findSOF[is]=false;
    countst[is]=0;
    countevt[is]=0;
    //RXin_tmp[is].clear();
  }


  if(verbose)
    cout<<"RXin ["<<endl;
  for(int ic=0; ic<RXin.size(); ic++){ //clock iterator
    //vector<unsigned long> RX_tmp = RXin[ic];


      

    if(RXin[ic].size() != 40){
      cout<<"cannot have "<<RXin[ic].size()<<" GTH...should have been 40 "<<endl;
      exit(1);
    }

    for(int imod=RTMmin; imod<=RTMmax; imod++){ 



      if(verbose){// && countevt[imod]==15){
	//	cout<<"ic "<<dec<<ic<<endl;
	cout<<setfill('0')<<setw(8)<<hex <<RXin[ic][imod]<<" ";
      }

      if(RXin[ic][imod] == SOFR_RX && !findSOF[imod]){
	// if(verbose && countevt[imod]==15){
	//   cout<<endl; cout<<"found SOFR "<<dec<<imod<<endl;
	// }
	findSOF[imod]=true;
      }

      //      if(verbose && countevt[imod]==15)
      //	cout<<"evt imod st "<<dec<<countevt[imod]<<" "<<dec<<imod<<" "<<countst[imod]<<endl;

      if(findSOF[imod] && countst[imod]<nstubs){
	//	RXin_tmp[is].push_back(RX_tmp[is]);
	RX3D[countevt[imod]][imod][countst[imod]] = RXin[ic][imod];
	countst[imod]++;
      }
      else if(countst[imod]==nstubs){//reset and look for another event
	countevt[imod]++;
	if(countevt[imod]<NEVT){//don't reset (e.g: stop storing) if you already stored NEVT 
	  countst[imod]=0;
	  findSOF[imod]=false;
	}
      }
    }//for(int imod=RTMmin; imod<=RTMmax; imod++)
    if(verbose){
      cout<<endl;
    
      for(int imod=RTMmin; imod<=RTMmax; imod++){
	if(verbose && countevt[imod]==15){
	  if(findSOF[imod])
	    cout<<"found SOFR "<<dec<<imod<<endl;
	}
      }
    }

  }//for(int ic=0; ic<RX.size(); ic++)

  //transform the 3D matrix in 3D array
  vector<vector<unsigned long>> RXout_tmp; RXout_tmp.clear();
  vector<unsigned long> RXout_tmp_tmp; RXout_tmp_tmp.clear();
  for(int iev=0; iev<NEVT; iev++){
    for(int imod=RTMmin; imod<=RTMmax; imod++){
      for(int is=0; is<NSTUBS; is++){
	RXout_tmp_tmp.push_back(RX3D[iev][imod][is]);
      }//for(int is=0; is<NSTUBS; is++)
      RXout_tmp.push_back(RXout_tmp_tmp);
      RXout_tmp_tmp.clear();
    }//for(int imod=0; imod<40; imod++)
    RXout->push_back(RXout_tmp);
    RXout_tmp.clear();
  }//for(int iev=0; iev<NEVT; iev++)


  if(verbose)
    cout<<"RXout.size() "<<RXout->size()<<endl;

  if(verbose)
    cout<<"--------done storeRX------"<<endl;

}

void cleanupRX(vector<vector<vector<unsigned long> > > RXin, vector<vector<vector<unsigned long> > > *RXout, bool verbose){
  /*
want to get rid of the aurora pauses in the csv file

look for three consecutive signals which are equal in RXin and removed two

  */                                                                                                            
                                                                                                                       
  if(verbose)
    cout<<"--------cleanupRX------"<<endl;



  for(int iev=0; iev<RXin.size(); iev++){
    vector<vector<unsigned long>> RXout_tmp; RXout_tmp.clear();
    for(int imod=0; imod<RXin[iev].size(); imod++){
      vector<unsigned long> RXout_tmp_tmp; RXout_tmp_tmp.clear();
      bool duplicate=false;
      for(int is=0; is<RXin[iev][imod].size(); is++){
	for(int iss=0; iss<is; iss++){//look for signal before [is] to see if [is] is a duplicate	  
	  if(RXin[iev][imod][is] != 0x00000000 && RXin[iev][imod][iss] == RXin[iev][imod][is] && (is-iss)<=2){ //gearbox cause signal to stretch for 3 clks
	    cout<<"found duplicate: RXin["<<dec<<iev<<"]["<<dec<<imod<<"]["<<dec<<is<<"] "<<setfill('0')<<setw(8)<<hex<<RXin[iev][imod][is]<<endl;
	    duplicate = true;
	  }
	}//for(int iss=is; iss<RXin[imod][iev].size(); iss++)
	if(!duplicate)
	  RXout_tmp_tmp.push_back(RXin[iev][imod][is]);
	duplicate=false;
      }//for(int is=0; is<RXin[imod][iev].size(); is++)
      RXout_tmp.push_back(RXout_tmp_tmp);
      RXout_tmp_tmp.clear();
    }//for(int imod=0; imod<RXin[iev].size(); imod++)
    RXout->push_back(RXout_tmp);
    RXout_tmp.clear();
  }//for(int iev=0; iev<NEVT; iev++)




  if(verbose)
    cout<<"--------done cleanupRX------"<<endl;

}

void loadRXfromTxt(std::ifstream& f_txt, unsigned int RTMmin, unsigned int RTMmax,  vector<vector<vector<unsigned long> > > *RXout, bool verbose){

  //each line is a 32b word, every 16 (512b) lines is one module (8 for CIC_L) (8 for CIC_R)

  if(verbose){
    cout<<"--------loadRXfromTxt------"<<endl;
    
  }

  std::string line; int count=-1;


  string value;
  int counter=0; //counter of lines
  vector<unsigned long> RX_tmp_tmp; RX_tmp_tmp.clear();
  vector<vector<unsigned long> > RX_tmp; RX_tmp.clear(); 
  vector<vector<vector<unsigned long> > > RX; RX.clear();


  // vector<unsigned long> RX_L_unroll_tmp_tmp, RX_R_unroll_tmp_tmp; RX_L_unroll_tmp_tmp.clear(); RX_R_unroll_tmp_tmp.clear(); //256 b
  // vector<vector<unsigned long> > RX_L_unroll_tmp, RX_R_unroll_tmp; RX_L_unroll_tmp.clear(); RX_R_unroll_tmp.clear(); //module 256b 
  // vector<vector<vector<unsigned long> > > RX_L_unroll, RX_R_unroll; RX_L_unroll.clear(); RX_R_unroll.clear(); //ev module 256b 

  unsigned count_gth=0; //increase every 16 lines (ie every module)
  unsigned count_evt=0; //increase every 80 line (ie 40modules*2 )

  unsigned int nst_lay5=0; 
  unsigned int nst_lay6=0;
  unsigned int nst_lay7=0; 
  unsigned int nst_lay8=0;
  unsigned int nst_lay9=0; 
  unsigned int nst_lay10=0;



  while(getline(f_txt,line)){//read one line at the time

    if(verbose)
      cout<<"counter, count_gth, count_evt "<<dec<<counter<<" "<<dec<<count_gth<<" "<<dec<<count_evt<<endl;


    unsigned int line_32b = strtoul(line.c_str(),0,2); //base 2
    unsigned long module_rx = 0x00060429;//using [0] for all 40, will change it
    //module_rx.push_back(vector<unsigned long>({00050332, 00050333, 00050334, 00060429, 00060430, 00060431, 00060529, 00060530, 00060531, 00070531, }));

    if(verbose){

      cout<<"line "<<setfill('0')<<setw(8)<<hex<<line_32b<<endl;
      cout<<"line "<<bitset<32>(line_32b)<<endl;
    }



    
    if(counter == 0) {
      RX_tmp_tmp.push_back(SOFR_RX);   //to mimic Silvia's DataGen
      RX_tmp_tmp.push_back(module_rx);//[count_2gth/2]); //to mimic Silvia's DataGen
      RX_tmp_tmp.push_back(line_32b);
    }
    else if(counter < 16){//CIC_L+CIC+R
      RX_tmp_tmp.push_back(line_32b);
      // if(counter == 7){//so far I have added 8+1 32b=10 words. Add (NSTUBS-10)*32b zeros to reproduce Silvia's DataGen	
      // 	for(int i=0; i<NSTUBS-10; i++)
      // 	  RX_tmp_tmp.push_back(ZEROS); 
	
      // }//if(counter==7)
    }//else if(counter<8)
    
    if(counter==15){
      //      if(count_2gth%2 == 0)
	RX_tmp.push_back(RX_tmp_tmp);
      // else
      // 	RX_R_tmp.push_back(RX_tmp_tmp);
      
	count_gth++;
	RX_tmp_tmp.clear();
	counter = 0;
    }
    else
      counter++;


    if((count_gth) == 40){ 
      if(verbose){
	cout<<"RX_L_tmp["<<endl;
	for(int igth=0; igth<40; igth++){
	  for(int is=0; is<RX_tmp[igth].size(); is++){//=NSTUBS
	    cout<<setfill('0')<<setw(8)<<hex<<RX_tmp[igth][is]<<" ";
	  }//for(int is=0; is<RX_L_tmp[igth].size(); is++)
	  cout<<endl;
	}//for(int igth=0; igth<40; igth++)
	// cout<<"RX_R_tmp["<<endl;
	// for(int igth=RTMmin; igth<=RTMmax; igth++){
	//   for(int is=0; is<RX_R_tmp[igth].size(); is++){//=NSTUBS
	//     cout<<setfill('0')<<setw(8)<<hex<<RX_R_tmp[igth][is]<<" "<<endl;
	//   }//for(int is=0; is<RX_L_tmp[igth].size(); is++)
	//   cout<<endl;
	// }//for(int igth=0; igth<40; igth++)

      }

      RX.push_back(RX_tmp);
      //      RX_R.push_back(RX_R_tmp);
      RX_tmp.clear();
      //RX_R_tmp.clear();
      count_evt++;
      count_gth=0;
    }
      

}//while





  *RXout = RX;




  if(verbose)
    cout<<"--------done loadRXfromTxt------"<<endl;


}

void UnrollRXData(std::ifstream& f_txt, vector<vector<vector<unsigned long> > > *RX_L_unroll, vector<vector<vector<unsigned long> > > *RX_R_unroll, bool verbose){

  if(verbose)
    cout<<"-------UnrollRXData--------"<<endl;


  vector<unsigned long> RX_L_unroll_tmp_tmp, RX_R_unroll_tmp_tmp; RX_L_unroll_tmp_tmp.clear(); RX_R_unroll_tmp_tmp.clear(); //256 b
  vector<vector<unsigned long> > RX_L_unroll_tmp, RX_R_unroll_tmp; RX_L_unroll_tmp.clear(); RX_R_unroll_tmp.clear(); //module 256b 
  //  vector<vector<vector<unsigned long> > > RX_L_unroll, RX_R_unroll; RX_L_unroll.clear(); RX_R_unroll.clear(); //ev mo


  unsigned int counter=0;
  unsigned int count_2gth=0;
  string line;
  while(getline(f_txt,line)){//read one line at the time

    unsigned int line_32b = strtoul(line.c_str(),0,2); //base 2

    if(verbose){
      cout<<"counter, count_2gth "<<dec<<counter<<", "<<dec<<count_2gth<<endl;
    }
      

    //unrolled data of half module (8x32b)
    if((count_2gth%2)==0){ 
      for(int ib=0; ib<32; ib++){
	unsigned int tmp = line_32b>>(31-ib) & MASK_1B;
	//	cout<<"unrolling "<<tmp<<endl;
	RX_L_unroll_tmp_tmp.push_back(tmp);
      }
    }//if((count_2gth%2)==0)
    else{
      for(int ib=0; ib<32; ib++){
	unsigned int tmp = line_32b>>(31-ib) & MASK_1B;
	RX_R_unroll_tmp_tmp.push_back(tmp);
      }
    }




    if(counter==7){
      if((count_2gth%2)==0){
	//	cout<<"RX_L_unroll_tmp_tmp.size() "<<dec<<RX_L_unroll_tmp_tmp.size()<<endl; 
	RX_L_unroll_tmp.push_back(RX_L_unroll_tmp_tmp);
	RX_L_unroll_tmp_tmp.clear();
      }
      else{
	RX_R_unroll_tmp.push_back(RX_R_unroll_tmp_tmp);
	RX_R_unroll_tmp_tmp.clear();
      }
    }
    if((count_2gth+1)%80 == 0 && counter==7){
      RX_L_unroll->push_back(RX_L_unroll_tmp);
      RX_R_unroll->push_back(RX_R_unroll_tmp);
      RX_L_unroll_tmp.clear();
      RX_R_unroll_tmp.clear();  
    }    

    //counter will reset every 8 lines : half module
    if(counter<7)
      counter++;
    else{
      counter=0;
      count_2gth++;
    }
    
  }//while(getline(f_txt,line))
    //


  if(verbose)
    cout<<"-------done UnrollRXData--------"<<endl;

  
}


void RetrieveInfoFromInputFile(vector<vector<vector<unsigned long> > > RX_unroll_in, unsigned int BX, vector<vector<vector<unsigned long> > > *stubBXidvec, vector<vector<vector<unsigned long> > > *stubPosvec, vector<vector<vector<unsigned long> > > *stubBendvec, bool verbose){
  //#bits per module =256
  //each module has embedded nstubs, global BXID, local BXid (one per stubs)

  //RX_unroll_in[iev] 

  ////////
  //////// DOUBLE CHECK I CHANGED if(ism26==(stBX_max) from else if if(ism26==(stBX_max+1)
  ///////


  //numbers from slide 5 of https://www.dropbox.com/s/cd6kq97dwje0s8v/DataSource.pdf?dl=0
  unsigned int globBXid_min = 10;
  unsigned int globBXid_max = 21;
  unsigned int globBXid_nb = globBXid_max-globBXid_min+1;
  unsigned int nst_min = 22;
  unsigned int nst_max = 25;
  unsigned int nst_nb = nst_max-nst_min+1;
  unsigned header_max=25;
  unsigned type_pos=0;
  unsigned int stubps_nb = 23;
  unsigned int stub2s_nb = 19; //21;
  unsigned trailer2s_min=256-2; //256-18;
  unsigned trailerps_min=999; //no trailer

  unsigned int stBX_min=0;
  unsigned int stBX_max=2;
  unsigned int stPos_min=3;
  unsigned int stPos_max=13;
  unsigned int stBend_min=14;
  unsigned int stBend_max=18;
  //

  unsigned int globBXid = 0;
  unsigned int nst = 0; 
  unsigned int nst_tobesbtr = 0; //counting nst with BX != BX 
  unsigned int nst_lay5 = 0;   unsigned int nstsbtr_lay5 = 0; //total nst, nst only for BX=BX
  unsigned int nst_lay6 = 0;   unsigned int nstsbtr_lay6 = 0; //total nst, nst only for BX=BX
  unsigned int nst_lay7 = 0;   unsigned int nstsbtr_lay7 = 0; //total nst, nst only for BX=BX
  unsigned int nst_lay8 = 0;   unsigned int nstsbtr_lay8 = 0; //total nst, nst only for BX=BX
  unsigned int nst_lay9 = 0;   unsigned int nstsbtr_lay9 = 0; //total nst, nst only for BX=BX
  unsigned int nst_lay10 = 0;  unsigned int nstsbtr_lay10 = 0; //total nst, nst only for BX=BX
  unsigned int stubBXid=0;   
  unsigned int stubPos=0;   
  unsigned int stubBend=0;   
  unsigned stub_nb;

  vector<vector<unsigned long> > stubBXidvec_tmp; stubBXidvec_tmp.clear();
  vector<unsigned long> stubBXidvec_tmp_tmp; stubBXidvec_tmp_tmp.clear();
  vector<vector<unsigned long> > stubPosvec_tmp; stubPosvec_tmp.clear();
  vector<unsigned long> stubPosvec_tmp_tmp; stubPosvec_tmp_tmp.clear();
  vector<vector<unsigned long> > stubBendvec_tmp; stubBendvec_tmp.clear();
  vector<unsigned long> stubBendvec_tmp_tmp; stubBendvec_tmp_tmp.clear();

  if(verbose)
    cout<<"-------RetrieveInfoFromInputFile--------"<<endl;

  bool isps=false;
  unsigned int trailer_min=trailer2s_min;
  unsigned int countst=0; //don't wanna print more stubs
  for(int iev=0; iev<RX_unroll_in.size(); iev++){
    //    if(verbose)
    cout<<"++++iev "<<dec<<iev<<endl;
    for(int igth=0; igth<RX_unroll_in[iev].size(); igth++){	
      if(RX_unroll_in[iev][igth][type_pos] == 1){ 
	isps=true;
	trailer_min=trailerps_min;
	stub_nb=stubps_nb;
      }
      else{
	isps=false;
	trailer_min=trailer2s_min;
	stub_nb=stub2s_nb;
      }
      if(verbose){
	cout<<"RX_unroll_in["<<dec<<iev<<"]["<<igth<<"][ "<<endl;
	if(isps)
	  cout<<"PS MODULE"<<endl;
	else
	  cout<<"2S MODULE"<<endl;
      }

      for(int is=0; is<RX_unroll_in[iev][igth].size(); is++){
	//	cout<<RX_unroll_in[iev][igth][is];
	//	if((is+1)%32==0) cout<<endl;

	if(is>=globBXid_min && is<=globBXid_max){
	  globBXid |= RX_unroll_in[iev][igth][is]<<(globBXid_nb-1)-(is-globBXid_min) ;
	}
	if(is>=nst_min && is<=nst_max){
	  nst |= RX_unroll_in[iev][igth][is]<<(nst_nb-1)-(is-nst_min) ;
	}

	if(verbose){
	  if(is==globBXid_max)
	    cout<<"globBXid "<<setfill('0')<<setw(3)<<hex<<globBXid<<endl;
	  if(is==nst_max)
	  cout<<"nst "<<dec<<nst<<endl;
	}

	//
	//stub-by-stub 
	//

	if(is<=header_max) continue;
	if(is>=trailer_min) continue; //last 18b trailer
	
	if(countst<nst){

	  //	  if(verbose)
	  // cout<<"countst "<<countst<<endl;

	  unsigned int ism26, isp1m26;
	  ism26=(is-26)%stub_nb;
	  isp1m26=((is+1)-26)%stub_nb;

	  //if(verbose)
	  // cout<<"ism26 "<<dec<<ism26<<" isp1m26 "<<dec<<isp1m26<<endl;


	  //BX
	  if(ism26>=stBX_min && ism26<=stBX_max){
	    //	  if(verbose)
	    //  cout<<"ind (bxid) "<<dec<<is<<" bit "<<RX_unroll_in[iev][igth][is]<<" ";
	    unsigned tmp = RX_unroll_in[iev][igth][is]<<(stBX_max-ism26);
	    //	  cout<<"tmp "<<tmp;
	    stubBXid |= tmp;
	    //cout<<"stubBXid tmp "<<stubBXid<<endl;
	    //store
	    if(ism26==(stBX_max)){
	      if(verbose)
		cout<<" stub stubBXid "<<dec<<stubBXid<<endl;
	      
	      if(stubBXid != BX) nst_tobesbtr++;
	      
	      stubBXidvec_tmp_tmp.push_back(stubBXid);
	      stubBXid = 0;
	  
	      //	    countst++;
	    }
	  }
	  //Stub position (overall) = chipID+stubaddress
	  if(ism26>=stPos_min && ism26<=stPos_max){
	    //	  if(verbose)
	    //cout<<"ind (stpos) "<<dec<<is<<" bit "<<RX_unroll_in[iev][igth][is]<<" ";
	    unsigned tmp = RX_unroll_in[iev][igth][is]<<(stPos_max-ism26);
	    //	  cout<<"tmp "<<tmp;
	    stubPos |= tmp;
	    //cout<<"stubPos tmp "<<stubPos<<endl;
	  
	    //store
	    if(ism26==(stPos_max)){
	      if(verbose)
		cout<<" stub stubPos "<<bitset<11>(stubPos)<<endl;
	      
	      stubPosvec_tmp_tmp.push_back(stubPos);
	      stubPos = 0;  
       
	    }
	  }
	  //stub bend
	  if(ism26>=stBend_min && ism26<=stBend_max){
	    //	  if(verbose)
	    //cout<<"ind (stpos) "<<dec<<is<<" bit "<<RX_unroll_in[iev][igth][is]<<" ";
	    unsigned tmp = RX_unroll_in[iev][igth][is]<<(stBend_max-ism26);
	    //	  cout<<"tmp "<<tmp;
	    stubBend |= tmp;
	    //cout<<"stubBend tmp "<<stubBend<<endl;
	  
	    //store
	    if(ism26==(stBend_max)){
	      if(verbose)
		cout<<" stub stubBend "<<bitset<5>(stubBend)<<endl;

	      stubBendvec_tmp_tmp.push_back(stubBend);
	      stubBend = 0;  
	    }
       
	  }

	  if((isp1m26)==0) countst++; //when processing the last bit of the stub incremenent counter
	}//if(countst<nst)

      }//for(int is=0; is<RX_unroll[iev][igth].size(); is++)
      globBXid=0;
      countst=0;
      stubBXid = 0;
      

      if(igth >= RTMINLAY5 && igth<= RTMAXLAY5){
	nst_lay5 += nst;
	nstsbtr_lay5 += nst-nst_tobesbtr;
      }
      if(igth >= RTMINLAY6 && igth<= RTMAXLAY6){
	nst_lay6 += nst;
	nstsbtr_lay6 += nst-nst_tobesbtr;
      }
      if(igth >= RTMINLAY7 && igth<= RTMAXLAY7){
	nst_lay7 += nst;
	nstsbtr_lay7 += nst-nst_tobesbtr;
      }
      if(igth >= RTMINLAY8 && igth<= RTMAXLAY8){
	nst_lay8 += nst;
	nstsbtr_lay8 += nst-nst_tobesbtr;
      }
      if(igth >= RTMINLAY9 && igth<= RTMAXLAY9){
	nst_lay9 += nst;
	nstsbtr_lay9 += nst-nst_tobesbtr;
      }
      if(igth >= RTMINLAY10 && igth<= RTMAXLAY10){
	nst_lay10 += nst;
	nstsbtr_lay10 += nst-nst_tobesbtr;
      }


      nst=0;
      nst_tobesbtr=0;

      stubBXidvec_tmp.push_back(stubBXidvec_tmp_tmp);
      stubBXidvec_tmp_tmp.clear();
      stubPosvec_tmp.push_back(stubPosvec_tmp_tmp);
      stubPosvec_tmp_tmp.clear();
      stubBendvec_tmp.push_back(stubBendvec_tmp_tmp);
      stubBendvec_tmp_tmp.clear();



    }//for(int igth=0; igth<RX_unroll[iev].size(); igth++)
    
    //    if(verbose){
    cout<<"nst_lay5  "<<dec<<nst_lay5<<" (BX"<<dec<<BX<<"= "<<nstsbtr_lay5<<")"<<endl;
    cout<<"nst_lay6  "<<dec<<nst_lay6<<" (BX"<<dec<<BX<<"= "<<nstsbtr_lay6<<")"<<endl;
    cout<<"nst_lay7  "<<dec<<nst_lay7<<" (BX"<<dec<<BX<<"= "<<nstsbtr_lay7<<")"<<endl;
    cout<<"nst_lay8  "<<dec<<nst_lay8<<" (BX"<<dec<<BX<<"= "<<nstsbtr_lay8<<")"<<endl;
    cout<<"nst_lay9  "<<dec<<nst_lay9<<" (BX"<<dec<<BX<<"= "<<nstsbtr_lay9<<")"<<endl;
    cout<<"nst_lay10 "<<dec<<nst_lay10<<" (BX"<<dec<<BX<<"= "<<nstsbtr_lay10<<")"<<endl;
      // }

  }//for(int iev=0; iev<RX_unroll.size(); iev++)


  stubBXidvec->push_back(stubBXidvec_tmp);
  stubBXidvec_tmp.clear();
  stubPosvec->push_back(stubPosvec_tmp);
  stubPosvec_tmp.clear();
  stubBendvec->push_back(stubBendvec_tmp);
  stubBendvec_tmp.clear();



  if(verbose)
    cout<<"-------Done RetrieveInfoFromInputFile--------"<<endl;
  
  
}


void storePRB2output(unsigned long evtNum, unsigned int layN, vector<vector<unsigned long> > PRBin, vector<unsigned long> *PRB2out, bool verbose){
  /*

PRBin

clk/layer        0                1             2      ... 5
0             PRBin[0][0]    PRBin[0][1]   PRBin[0][2]
1             PRBin[1][0]    PRBin[1][1]   PRBin[1][2]    
2             PRBin[2][0]    PRBin[2][1]   PRBin[2][2]
3             PRBin[3][0]    PRBin[3][1]   PRBin[3][2]


PRB2out (for a given layer)

clk         0             1         2      ...
0       PRB2out[0]    PRB2out[1]   PRB2out[2]

  */                                                                                                            
                                                                                                                       
  if(verbose)
    cout<<"--------storePRB2output------"<<endl;

  if(verbose)
    cout<<"looking for evtNum "<<hex<<evtNum<<" in the csv file"<<endl;




  bool findSOF_out=false;
  bool valid_out=false;
  bool findEOF_out=false;
  unsigned int countst=0;
  bool first=true;
  bool firsteventsaved=false;
  for(int ic=0; ic<PRBin.size(); ic++){ //clock iterator
    if(firsteventsaved) continue;

    vector<unsigned long> PRB2_tmp = PRBin[ic];
    if(PRB2_tmp.size() != 6){
      cout<<"cannot have "<<PRB2_tmp.size()<<" GTH...should have been 6 "<<endl;
      exit(1);
    }

    if(PRB2_tmp[layN] == SOFR)
      findSOF_out=true;

    if(verbose)
      cout<<"PRB2_tmp["<<dec<<layN<<"] "<< setfill('0')<<setw(8)<<hex << PRB2_tmp[layN] <<endl;
    //cout<<((PRB2_tmp[layN]>>16) & MASK_4B)<<endl;
    if((PRB2_tmp[layN]>>16 & MASK_4B) == evtNum){
      if(verbose)
	cout<<"found event"<<endl;
      valid_out=true;
    }
    //    cout<<((PRB2_tmp[layN] & 0xFFFFFF00))<<endl;
    if((PRB2_tmp[layN] & 0xFFFFFF00) == EOFR){ //will not care about the last two hex
      //cout<<"FOUNF EOF"<<endl;
      findEOF_out=true;
    }

      

    if(findSOF_out && valid_out && !findEOF_out){
      if(first){
	PRB2out->push_back(0x20000000);
	first=false;
      }
      PRB2out->push_back(PRB2_tmp[layN]);
      countst++;
    }
    else if(findEOF_out){
      if(findSOF_out && valid_out){//it's the right event 
      PRB2out->push_back(PRB2_tmp[layN]);
      //want to save only the first event
      firsteventsaved=true;
      }
      //reset all the flag to default no matter what
      findSOF_out=false;
      valid_out=false;
      findEOF_out=false;
    }
  }//for(int ic=0; ic<PRB.size(); ic++)




  if(verbose)
    cout<<"--------done storePRB2output------"<<endl;



}

void DATA_GEN_RX(vector<vector<vector<unsigned long> > > RX_in, const unsigned int nGTH, vector<vector<vector<unsigned long> > > *Moduleout, vector<vector<vector<unsigned long> > > *CIC_Rout, vector<vector<vector<unsigned long> > > *CIC_Lout, bool verbose){
  //SIPO: read RX_in, skip SOFR_RX (is=0), store LS24b of module_rx (is=1), store the rest (is>=2)
  //ModuleCICFilling: store module_rx, CIC_R, CIC_L in different arrays


  if(verbose)
    cout<<"------DATA_GEN_RX-----"<<endl;

  vector<vector<vector<unsigned long> > > data_p_sipo;     data_p_sipo.clear(); //evt mod stub
  SIPO(RX_in, nGTH, &data_p_sipo, verbose);

  if(verbose){
    cout<<"************"<<endl;
    cout<<"-----------------------------------------------"<<endl;
    for(int iev=0; iev<data_p_sipo.size(); iev++){
      cout<<"data_p_sipo["<<dec<<iev<<"] size "<<dec<<data_p_sipo[iev].size()<<endl;
      for(int igth=0; igth<data_p_sipo[iev].size(); igth++){
	cout<<"data_p_sipo["<<dec<<iev<<"][ "<<dec<<igth<<"] size "<<data_p_sipo[iev][igth].size()<<endl;
	for(int is=0; is<data_p_sipo[iev][igth].size(); is++){
	  //	cout<<"is "<<dec<<is<<" "; 
	  if(is==0){
	    cout<< bitset<24>(data_p_sipo[iev][igth][is] & MASK_24B)<<endl;

	  }
	  else{
	    cout<< bitset<32>(data_p_sipo[iev][igth][is] & MASK_32B)<<endl;
	  }

	  
	}//for(int is=0; is<data_p_sipo[iev][igth].size(); is++)
	cout<<endl;
      }//for(int igth=0; igth<data_gen_RX_s.size(); igth++)
    }//for(int iev=0; iev<data_p_sipo.size(); iev++)
  }

  ModuleCICFilling(data_p_sipo, nGTH, Moduleout, CIC_Rout, CIC_Lout, verbose); 

  if(verbose)
    cout<<"------Done DATA_GEN_RX-----"<<endl;

}

void SIPO(vector<vector<vector<unsigned long> > > RX_in, const unsigned int nGTH, vector<vector<vector<unsigned long> > > *SIPO_out, bool verbose){
  //SIPO: read RX_in, skip SOFR_RX (is=0), store LS24b of module_rx (is=1), store the rest (is>=2)  
  //SIPO_out is data_gen_RX_s[is=1] &MASK_24B and data_gen_RX_s[is>=2]


  if(verbose)
    cout<<"------SIPO-----"<<endl;


  vector<unsigned long> data_p_sipo_tmp_tmp; data_p_sipo_tmp_tmp.clear();
  vector<vector<unsigned long> > data_p_sipo_tmp; data_p_sipo_tmp.clear();

  

  for(int iev=0; iev<NEVT; iev++){    
    for(int imod=0; imod<nGTH; imod++){
      //    cout<<"imod "<<imod<<endl;
      
      if(verbose){
	cout<<"-----------------------------------------------"<<endl;
	cout << "RX_in ";
	for(int i=0; i<NSTUBS; i++)	
	  //	  cout << setfill('0')<<setw(8)<<hex << RX_in[iev][imod][i]<<" ";
	  cout << bitset<32>(RX_in[iev][imod][i])<<" ";
	cout<<endl;
      }
      
      
      for(int is=0; is<NSTUBS; is++){
	if(is==0) continue; //don't care about the FFFFFFF
	if(is==1){//module_rx: dropping MSB 8b, storing LSB 24b
	  data_p_sipo_tmp_tmp.push_back((RX_in[iev][imod][is]) & MASK_24B);	  
	}
	else{//starting the CICs
	  data_p_sipo_tmp_tmp.push_back(RX_in[iev][imod][is] & MASK_32B);
	}
	if(verbose)
	  cout << bitset<32>(data_p_sipo_tmp_tmp[data_p_sipo_tmp_tmp.size()-1])<<endl;
      }//for(int is=0; is<NSTUBS; is++)
      data_p_sipo_tmp.push_back(data_p_sipo_tmp_tmp);
      data_p_sipo_tmp_tmp.clear();
    }//for(int imod=0; imod<nGTH; imod++)
    SIPO_out->push_back(data_p_sipo_tmp);
    data_p_sipo_tmp.clear();
  }//for(int iev=0; iev<NEVT; iev++)


  if(verbose)
    cout<<"------Done SIPO-----"<<endl;


}

void ModuleCICFilling(vector<vector<vector<unsigned long> > > SIPOin, const unsigned int nGTH, vector<vector<vector<unsigned long> > > *Moduleout, vector<vector<vector<unsigned long> > > *CIC_Rout, vector<vector<vector<unsigned long> > > *CIC_Lout, bool verbose){
  //ModuleCICFilling: reasind SIPOin, store module_rx, CIC_R, CIC_L in different arrays

  if(verbose)
    cout<<"------ModuleCICFilling----"<<endl;

  vector<unsigned long> module_rx_tmp; module_rx_tmp.clear();
  vector<unsigned long> CIC_R_rx_tmp;  CIC_R_rx_tmp.clear();
  vector<unsigned long> CIC_L_rx_tmp;  CIC_L_rx_tmp.clear();
  vector<vector<unsigned long> > module_rx; module_rx.clear(); 
  vector<vector<unsigned long> > CIC_R_rx;  CIC_R_rx.clear();
  vector<vector<unsigned long> > CIC_L_rx;  CIC_L_rx.clear(); 
  for(int iev=0; iev<NEVT; iev++){ 
    if(verbose)
      cout<<"+++++ev "<<iev<<endl;
    for(int imod=0; imod<nGTH; imod++){
      for(int is=0; is<SIPOin[iev][imod].size(); is++){//was 17 (instead of SIPOin[iev][imod].size())
	//i*(NSTUBS-1) will go in module,  i%(NSTUBS-1)<=8 in CIC_R, i%(NSTUBS-1)>8 in CIC_L;
	if(is==0)
	  module_rx_tmp.push_back((SIPOin[iev][imod][is] & MASK_24B)); //SIPOin[iev][imod](535 downto 512)
	else if(is<=((NSTUBS-2)/2)){//CIC_R
	  CIC_R_rx_tmp.push_back(SIPOin[iev][imod][is] & MASK_32B); //CIC_R_rx(i)<=SIPOin[iev][imod](511 downto 256);
	  if(verbose)
	    cout<<"R "<<bitset<32>(CIC_R_rx_tmp[CIC_R_rx_tmp.size()-1])<<endl;
	}
	else{// CIC_L
	  CIC_L_rx_tmp.push_back(SIPOin[iev][imod][is]); //CIC_L_rx(i)<=SIPOin[iev][imod](255 downto 0);
	  if(verbose)
	    cout<<"L "<<bitset<32>(CIC_L_rx_tmp[CIC_L_rx_tmp.size()-1])<<endl;
	}
	// else{
	//   CIC_L_rx_tmp.push_back((SIPOin[iev][imod][is-1] & MASK_8B)<<24 | (SIPOin[iev][imod][is] & MASK_24B));
	//   cout<<"L "<<bitset<32>(CIC_L_rx_tmp[CIC_L_rx_tmp.size()-1])<<endl;
	// }
      }//for(int is=0; is<SIPOin[iev][imod].size(); is++)
      
      if(verbose){
	cout<<"************"<<endl;
	cout<<"module_rx_tmp.size() "<<dec<<module_rx_tmp.size()<<endl;
	cout<<"module_rx_tmp[0] "<<setfill('0')<<setw(6)<<hex<<module_rx_tmp[0]<<endl;
	cout<<"CIC_R_rx_tmp.size() "<<dec<<CIC_R_rx_tmp.size()<<endl;
	cout<<"CIC_L_rx_tmp.size() "<<dec<<CIC_L_rx_tmp.size()<<endl;
      }
      
      module_rx.push_back(module_rx_tmp);
      CIC_R_rx.push_back(CIC_R_rx_tmp);
      CIC_L_rx.push_back(CIC_L_rx_tmp);
      module_rx_tmp.clear();
      CIC_R_rx_tmp.clear(); 
      CIC_L_rx_tmp.clear(); 
    }//for(int imod=0; imod<nGTH; imod++)
    Moduleout->push_back(module_rx);
    CIC_Rout->push_back(CIC_R_rx);
    CIC_Lout->push_back(CIC_L_rx);
    module_rx.clear();
    CIC_R_rx.clear(); 
    CIC_L_rx.clear(); 
  }//for(int iev=0; iev<NEVT; iev++)


  if(verbose)
    cout<<"------Done ModuleCICFilling----"<<endl;

}

void UnrollCICData(vector<vector<vector<unsigned long> > > CICin, unsigned int nGTH, vector<vector<vector<unsigned long> > > *CICout, bool verbose){

  if(verbose)
    cout<<"----UnrollCICData----"<<endl;





  
  //create an std vector storing one bit per each position. vec size is 256 bits
  vector<unsigned long> CIC_R_rx_unroll_tmp; CIC_R_rx_unroll_tmp.clear(); 
  vector<vector<unsigned long> > CIC_R_rx_unroll; CIC_R_rx_unroll.clear(); 
  for(int iev=0; iev<NEVT; iev++){
    for(int imod=0; imod<nGTH; imod++){

      if(verbose)
	cout<<"CICin["<<dec<<iev<<"]["<<dec<<imod<<"] size "<<dec<<CICin[iev][imod].size()<<endl;

      int counttot=0;
      for(int is=0; is<CICin[iev][imod].size(); is++){
	if(verbose)
	  //cout<<"CICin["<<dec<<iev<<"]["<<dec<<imod<<"] "<<setfill('0')<<setw(8)<<hex<<CICin[iev][imod][is]<<endl;
	  cout<<"CICin["<<dec<<iev<<"]["<<dec<<imod<<"] "<<bitset<32>(CICin[iev][imod][is])<<endl;
	for(int ib=0; ib<32; ib++){
	  //cout<<"is "<<dec<<is<<" ib "<<dec<<ib<<endl;
	  unsigned long tmp_bit = CICin[iev][imod][is]>>31-ib & MASK_1B;

	  // if(ib%4==0)
	  //   cout<<"| "<<endl;
	  // cout<<hex<<tmp_bit<<" ";
	  


	  CIC_R_rx_unroll_tmp.push_back(tmp_bit);
	  counttot++;
	  //	cout<<"counttot "<<counttot<<endl;
	} 
	//      cout<<endl;
      }
      //    cout<<"AAA counttot "<<dec<<counttot<<endl;
      CIC_R_rx_unroll.push_back(CIC_R_rx_unroll_tmp);
      CIC_R_rx_unroll_tmp.clear();
    }//for(int imod=0; imod<nGTH; imod++)
    CICout->push_back(CIC_R_rx_unroll);
    CIC_R_rx_unroll.clear();
  }//for(int iev=0; iev<NEVT; iev++)


  


  if(verbose)
    cout<<"----Done UnrollCICData----"<<endl;



}

void serialize_for_PRBF1_debugdata(vector<vector<vector<unsigned long> > > CICUnrollin, unsigned int nGTH, unsigned long int layer, vector<vector<unsigned long> > *Serial_PRBF1out, bool verbose){

  if(verbose)
    cout<<"----serialize_for_PRBF1_debugdata----";

  unsigned int stubps_nb = 23;
  unsigned int stub2s_nb = 19; //21;
  unsigned trailer2s_min=256-2;
  unsigned trailerps_min=999; //no trailer


  unsigned int stub_nb; //nb depends on the module 
  unsigned int trailer_min;

 //255 to 230 not used. 229 to 0 splitted in 10 pieces of 23 bits
  unsigned long serial_layer_to_PRBF1_1_tmp_tmp; //28 bits
  vector<unsigned long> serial_layer_to_PRBF1_1_tmp; 
  vector<vector<unsigned long> > serial_layer_to_PRBF1_1; 

  vector<vector<vector<unsigned long> > > serial_layer_to_PRBF1_1all;


  for(int iev=0; iev<NEVT; iev++){
    if(verbose)
      cout<<"++++ievt "<<iev<<endl;
    serial_layer_to_PRBF1_1.clear();
    for(int imod=0; imod<nGTH; imod++){
      serial_layer_to_PRBF1_1_tmp_tmp = 0x0000000;
      int count = 0;
      if(verbose)
	cout<<"CICUnrollin["<<dec<<iev<<"]["<<dec<<imod<<"] "<<endl;
      bool first=false;
      bool isps=false;
      if(CICUnrollin[iev][imod][0] == 1){//PS
	isps=true;
	stub_nb = stubps_nb;
	trailer_min=trailerps_min;
      }
      else{//2S
	isps=false;
	stub_nb = stub2s_nb;
	trailer_min=trailer2s_min;
      }
      for(unsigned int is=0; is<256; is++){
	//is used for retrieving CIC_R_rx_unroll items, ismod256 for filling serial_layer_to_PRBF1_1



	if(is<26) continue; //255 downto 230 dropped per each event
	if((is>=trailer_min) ) continue; //last 18b trailer
	
	if(verbose){
	  if((is)%4==0){ 
	    cout<<endl;
	    cout<<"--- is "<<dec<<is<<endl;
	  }
	  if(is/256>0 & !first){ 
	    cout<<endl;
	    cout<<"**** is"<<dec<<is<<endl;
	    first=true;
	  }
	}
	
	if(verbose)
	  cout<<hex<<CICUnrollin[iev][imod][is]<<" ";

	//	unsigned long tmp = 22-(is-26-23*(serial_layer_to_PRBF1_1_tmp.size()%10)); ////%10 to allow for more events (assumin CIC has size of 256 and serial_layer_to_PRBF1_1_tmp of 10 as in the F/W) %10 obsolete??? 
	unsigned long tmp = (stub_nb-1)-(is-26-stub_nb*(serial_layer_to_PRBF1_1_tmp.size()));

	if(verbose)
	  cout<<"   shift  "<<dec<<tmp<<"    "<<endl;
	serial_layer_to_PRBF1_1_tmp_tmp |= CICUnrollin[iev][imod][is]<<tmp; 
	count++;
	//	if(count==23){
	if(count==stub_nb){
	  //	  serial_layer_to_PRBF1_1_tmp.push_back(layer<<24 | 0<<23 | serial_layer_to_PRBF1_1_tmp_tmp);
	  if(isps)
	    serial_layer_to_PRBF1_1_tmp.push_back(layer<<24 | 0<<23 | serial_layer_to_PRBF1_1_tmp_tmp); //layer (27-24) | 0 (23) | serial (22-0)
	  else
	    serial_layer_to_PRBF1_1_tmp.push_back(layer<<24 | 0<<23 | serial_layer_to_PRBF1_1_tmp_tmp<<(23-stub_nb) | 0<<(23-stub_nb-1));//layer (27-24) | 0 (23) | serial (22-2) | 0(1-0)  
	  if(verbose)
	    cout<<"serial_layer_to_PRBF1_1_tmp "<<setfill('0')<<setw(7)<<hex<<serial_layer_to_PRBF1_1_tmp[serial_layer_to_PRBF1_1_tmp.size()-1]<<endl;	
	  
	  count=0;
	  serial_layer_to_PRBF1_1_tmp_tmp = 0x000000;
	}//if(count==23)
      }//for(unsigned int is=0; is<CICUnrollin[iev][imod].size(); is++)
      
      if(verbose){
	cout<<"************"<<endl;
	cout<<"imod "<<dec<<imod<<" serial_layer_to_PRBF1_1_tmp.size() "<<dec<<serial_layer_to_PRBF1_1_tmp.size()<<endl;
      }
      serial_layer_to_PRBF1_1.push_back(serial_layer_to_PRBF1_1_tmp);    
      serial_layer_to_PRBF1_1_tmp.clear();
    }//for(int imod=0; imod<nGTH; imod++)
    serial_layer_to_PRBF1_1all.push_back(serial_layer_to_PRBF1_1);  
    serial_layer_to_PRBF1_1.clear();
  }//for(int iev=0; iev<NEVT; iev++)


  for(int iev=0; iev<NEVT; iev++){
    if(verbose)
      cout<<"iev "<<dec<<iev<<endl;
    vector<unsigned long > serial_layer_to_PRBF1_1_tmp;
    for(int imod=0; imod<nGTH; imod++){
      for(int i=0; i<serial_layer_to_PRBF1_1all[iev][imod].size(); i++){
	serial_layer_to_PRBF1_1_tmp.push_back(serial_layer_to_PRBF1_1all[iev][imod][i]);
      }	
    }//for(int imod=0; imod<nGTH; imod++)
    Serial_PRBF1out->push_back(serial_layer_to_PRBF1_1_tmp);
    serial_layer_to_PRBF1_1_tmp.clear();
  }//for(int iev=0; iev<NEVT; iev++)




  if(verbose)
    cout<<"----Done serialize_for_PRBF1_debugdata----";

}

void serialize_for_PRBF1(vector<vector<vector<unsigned long> > > CICUnrollin, unsigned int nGTH, unsigned int RTMmin, unsigned long int layer, bool isR, vector<vector<unsigned long> > *Serial_PRBF1out, bool verbose){

  /*output formta
 mod_id:  std_logic_vector( 34 downto 26); //as in Seb's module+ladder 5b mod_id, 4 ladder
 phi:     std_logic_vector(25 downto 15);  //as in Seb's stubs position (overall)
 CIC:     std_logic_vector(14 downto 14); //R=1, L=0
 z:       std_logic_vector(13 downto 10);    //z (for 2S =0000) //CIC close to z as opposed to Seb
 bend:    std_logic_vector( 9 downto 6); //1more than Seb [1]
 layer:   std_logic_vector( 5 downto 3); //one less than Seb
 bxid:   std_logic_vector( 2 downto 0); //to be dropped in From_PRBFraw_to_PRBF1
  */


  //mod id and layer has to be stamped to the data here since the origin of the data will be lost here (5RTM are bundled in one). If we want to keep the BX info the output will be (referring to CIC256format_nomergedbits2S)
  //PS: modid(=9)+phi(chip(3+address(8)=11)+CIC(=1)+z(=4)   +bend(=4)+layer(=3)+bx(=3)=35b. 
  //2S: modid(=9)+phi(chip(3+address(8)=11)+CIC(=1)+0000(=4)+bend(=4)+layer(=3)+bx(=3)=35b. //same as ps but z's bits are 0)
  //BX(3b) will be dropped in the next step after selection .

  if(verbose)
    cout<<"----serialize_for_PRBF1----";

  unsigned int stubps_nb = 23;
  unsigned int stub2s_nb = 19; //21;
  unsigned trailer2s_min=256-2;
  unsigned trailerps_min=999; //no trailer

  unsigned int nst_min = 22;
  unsigned int nst_max = 25;
  unsigned int nst_nb = nst_max-nst_min+1;


  unsigned int bxloc_ps_min = 20;//bit locations in input: 23 downto 20
  unsigned int chipstadrrloc_ps_min = 9; //bit locations in input: 19 downto 9
  unsigned int bendloc_ps_min = 5;//bit locations in input: 8 downto 4 (N.B: shifting by 5 since we want to drop the LSB)
  unsigned int zloc_ps_min = 0;//bit locations in input: 3 downto 0
  unsigned int bxloc_2s_min = 16;//bit locations in input: 19 downto 16
  unsigned int chipstadrrloc_2s_min = 5;//bit locations in input: 15 downto 5
  unsigned int bendloc_2s_min = 1;//bit locations in input: 4 downto 0 (N.B: shifting by 5 since we want to drop the LSB)



  unsigned int stub_nb; //nb depends on the module 
  unsigned int trailer_min;

  unsigned int bxloc_min;
  unsigned int chipstadrrloc_min;
  unsigned int bendloc_min;


 //255 to 230 not used. 229 to 0 splitted in 10 pieces of 23 bits
  unsigned long serial_layer_to_PRBF1_1_tmp_tmp; //28 bits
  vector<unsigned long> serial_layer_to_PRBF1_1_tmp; 
  vector<vector<unsigned long> > serial_layer_to_PRBF1_1; 

  vector<vector<vector<unsigned long> > > serial_layer_to_PRBF1_1all;

  unsigned long mod_id, lad_id, modlad_id;

  bool RorL;//R=1; L=0 ask Zhen

  if(isR)
    RorL = 1;
  else 
    RorL = 0;

  for(int iev=0; iev<NEVT; iev++){
    if(verbose)
      cout<<"++++ievt "<<iev<<endl;
    serial_layer_to_PRBF1_1.clear();
    for(int imod=0; imod<nGTH; imod++){
      serial_layer_to_PRBF1_1_tmp_tmp = 0x0000000;
      int count = 0;
      if(verbose)
	cout<<"CICUnrollin["<<dec<<iev<<"]["<<dec<<imod<<"] "<<endl;
      bool first=false;
      bool isps=false;
      if(CICUnrollin[iev][imod][0] == 1){//PS
	isps=true;
	stub_nb = stubps_nb;
	trailer_min=trailerps_min;
	bxloc_min = bxloc_ps_min;
	chipstadrrloc_min = chipstadrrloc_ps_min;
	bendloc_min = bendloc_ps_min;

      }
      else{//2S
	isps=false;
	stub_nb = stub2s_nb;
	trailer_min=trailer2s_min;

	bxloc_min = bxloc_2s_min;
	chipstadrrloc_min = chipstadrrloc_2s_min;
	bendloc_min = bendloc_2s_min;

      }

      if(isps){
	string str_lut = "./ModuleListBoard00.txt";
	ifstream f_lut; f_lut.open(str_lut.c_str());
	if(!f_lut.is_open()) {
	  cout<<"Error file "<<f_lut<<" not found "<<endl;
	  exit(1);
	}
	retrievemoduleladder(f_lut, imod+RTMmin, &mod_id, &lad_id, &modlad_id, verbose); //9b //understand how to combined the two 
	
	f_lut.close();
      }

      unsigned int nstub=0;
      for(unsigned int is=0; is<256; is++){
	if(is>=nst_min && is<=nst_max){
	  nstub |= CICUnrollin[iev][imod][is]<<(nst_nb-1)-(is-nst_min) ;
	}
      }//for(unsigned int is=0; is<256; is++)

      if(verbose)
	cout<<"nstub "<<nstub<<endl;

      for(unsigned int is=0; is<256; is++){
	//is used for retrieving CIC_R_rx_unroll items, ismod256 for filling serial_layer_to_PRBF1_1



	if(is<26) continue; //255 downto 230 dropped per each event
	if((is>=trailer_min) ) continue; //last 18b trailer

	if(serial_layer_to_PRBF1_1_tmp.size()>=nstub) continue;
	
	if(verbose){
	  //	    cout<<endl;
	  cout<<"--- is "<<dec<<is<<endl;
	    
	  if(is/256>0 & !first){ 
	    cout<<endl;
	    cout<<"**** is"<<dec<<is<<endl;
	    first=true;
	  }
	}
	
	//if(verbose)
	//  cout<<bitset<1>(CICUnrollin[iev][imod][is])<<endl;

	//	unsigned long tmp = 22-(is-26-23*(serial_layer_to_PRBF1_1_tmp.size()%10)); ////%10 to allow for more events (assumin CIC has size of 256 and serial_layer_to_PRBF1_1_tmp of 10 as in the F/W) %10 obsolete??? 
	unsigned long tmp = (stub_nb-1)-(is-26-stub_nb*(serial_layer_to_PRBF1_1_tmp.size()));

	//	if(verbose)
	//  cout<<"   shift  "<<dec<<tmp<<"    "<<endl;
	serial_layer_to_PRBF1_1_tmp_tmp |= CICUnrollin[iev][imod][is]<<tmp; 
	count++;




	//	cout<<"QUIIII "<<count<<" isps "<<isps<<endl;
	if(count==stub_nb){
	    unsigned long bx_id = (serial_layer_to_PRBF1_1_tmp_tmp>>bxloc_min & MASK_3B);//3b
	    unsigned long phi =( serial_layer_to_PRBF1_1_tmp_tmp>>chipstadrrloc_min  & MASK_11B);//11b //chip+stub address

	    unsigned long bend = (serial_layer_to_PRBF1_1_tmp_tmp>>bendloc_min & MASK_4B);//discarding the LB to stay with 4b. Ask Zhen)
	    unsigned long z;
	    if(isps)
	      z = serial_layer_to_PRBF1_1_tmp_tmp<<zloc_ps_min & MASK_4B;//4b
	    else
	      z = 0 & MASK_4B;//4b
	    unsigned long layer_3b = locallayer(layer) & MASK_3B; //layer goes from 5 to 10 -> locallayer goes from 0 to 5 (so 3b are enough) 


	    //info can directly be compared to printout of RetrieveInfoFromInputFile
	    if(verbose){
	      cout<<"bx_id "<<dec<<bx_id<<endl;
	      cout<<"phi "<<bitset<11>(phi)<<endl;
	      cout<<"RorL "<<bitset<1>(RorL)<<endl;
	      cout<<"z "<<bitset<4>(z)<<endl;
	      cout<<"bend "<<bitset<4>(bend)<<endl;
	      cout<<"layer "<<bitset<3>(layer_3b)<<endl;
	    }

	  if(isps){
	    //modlad_id above
	    if(verbose){
	      cout<<" serial_layer_to_PRBF1_1_tmp_tmp "<<bitset<23>(serial_layer_to_PRBF1_1_tmp_tmp)<<endl;
	    }
	    //	    unsigned long z = (serial_layer_to_PRBF1_1_tmp_tmp<<zloc_ps_min & MASK_4B);//4b
	    
	    //serial_layer_to_PRBF1_1_tmp.push_back(modlad_id<<(34-8) | phi<<(25-10) | RorL<<14 | z<<(13-3) | bend<<(9-3) | layer_3b<<(5-2) | bx_id ); 
	  }
	  else{
	    if(verbose){
	      cout<<" serial_layer_to_PRBF1_1_tmp_tmp "<<bitset<19>(serial_layer_to_PRBF1_1_tmp_tmp)<<endl;
	    }	   
	    // serial_layer_to_PRBF1_1_tmp.push_back(modlad_id<<(29-8) | phi<<(20-10) | bend<<(9-3) | layer_3b<<(5-2) | bx_id);
	  }

	  serial_layer_to_PRBF1_1_tmp.push_back(modlad_id<<(34-8) | phi<<(25-10) | RorL<<14 | z<<(13-3) | bend<<(9-3) | layer_3b<<(5-2) | bx_id ); 

	  
	  count=0;
	  serial_layer_to_PRBF1_1_tmp_tmp = 0x000000;
	  mod_id = 0; 
	  lad_id = 0; 
	  modlad_id = 0;

	}//if(count==23)
      }//for(unsigned int is=0; is<CICUnrollin[iev][imod].size(); is++)
      
      if(verbose){
	cout<<"************"<<endl;
	cout<<"imod "<<dec<<imod<<" serial_layer_to_PRBF1_1_tmp.size() "<<dec<<serial_layer_to_PRBF1_1_tmp.size()<<endl;
      }
      serial_layer_to_PRBF1_1.push_back(serial_layer_to_PRBF1_1_tmp);    
      serial_layer_to_PRBF1_1_tmp.clear();
    }//for(int imod=0; imod<nGTH; imod++)
    serial_layer_to_PRBF1_1all.push_back(serial_layer_to_PRBF1_1);  
    serial_layer_to_PRBF1_1.clear();
  }//for(int iev=0; iev<NEVT; iev++)


  for(int iev=0; iev<NEVT; iev++){
    if(verbose)
      cout<<"iev "<<dec<<iev<<endl;
    vector<unsigned long > serial_layer_to_PRBF1_1_tmp;
    for(int imod=0; imod<nGTH; imod++){
      for(int i=0; i<serial_layer_to_PRBF1_1all[iev][imod].size(); i++){
	serial_layer_to_PRBF1_1_tmp.push_back(serial_layer_to_PRBF1_1all[iev][imod][i]);
      }	
    }//for(int imod=0; imod<nGTH; imod++)
    Serial_PRBF1out->push_back(serial_layer_to_PRBF1_1_tmp);
    serial_layer_to_PRBF1_1_tmp.clear();
  }//for(int iev=0; iev<NEVT; iev++)




  if(verbose)
    cout<<"----Done serialize_for_PRBF1----";

}


void From_PRBFraw_to_PRBF1_debug(vector<vector<unsigned long> > Serial_PRBF1in, const unsigned int BX, vector<vector<unsigned long> > *PRB1out, bool verbose){
  //select BX=0 and add "a"
  //It's all PRBF1 but SOFR and EOFR. It will be added later

  if(verbose)
    cout<<"-----From_PRBFraw_to_PRBF1_debug----"<<endl;




  for(int iev=0; iev<NEVT; iev++){
    if(verbose)
      cout<<"++++iev"<<dec<<iev<<endl;
    vector<unsigned long > PRB1out_tmp;  PRB1out_tmp.clear();
    for(int is=0; is<Serial_PRBF1in[iev].size(); is++){
      if(verbose)
	cout << "Serial_PRBF1in["<<dec<<is<<"] "<< setfill('0')<<setw(7)<<hex << Serial_PRBF1in[iev][is]<<endl;
      //    cout<<"Serial_PRBF1in["<<dec<<is<<"] "<<Serial_PRBF1in[is]<<endl;
      if((Serial_PRBF1in[iev][is]>>20 & MASK_4B) == BX && (Serial_PRBF1in[iev][is] & MASK_24B) != 0x000000){
	if(verbose)
	  cout<<"BX found "<<endl;      
	PRB1out_tmp.push_back((0xa & MASK_4B)<<28 | (Serial_PRBF1in[iev][is] & MASK_28B));
      }
      // if(is%(10-1)==0){//event done
      // 	PRB1out.push_back(PRB1out_tmp);
      // 	PRB1out_tmp.clear();
      // }
    }//for(int is=0; is<Serial_PRBF1in[iev].size(); is++)
    PRB1out->push_back(PRB1out_tmp);

  }//for(int iev=0; iev<NEVT; iev++)


  if(verbose)
    cout<<"-----Done From_PRBFraw_to_PRBF1_debug----"<<endl;

}

void From_PRBFraw_to_PRBF1(vector<vector<unsigned long> > Serial_PRBF1in, const unsigned int BX, vector<vector<unsigned long> > *PRB1out, bool verbose){
  //select BX=0 and drop bxid
  //for PS/2S modules: 35b(Serial_PRBF1in)-3b(bx)=32b
  //output is 32b
  //It's all PRBF1 but SOFR and EOFR. It will be added later

  if(verbose)
    cout<<"-----From_PRBFraw_to_PRBF1----"<<endl;




  for(int iev=0; iev<NEVT; iev++){
    if(verbose)
      cout<<"++++iev"<<dec<<iev<<endl;
    vector<unsigned long > PRB1out_tmp;  PRB1out_tmp.clear();
    for(int is=0; is<Serial_PRBF1in[iev].size(); is++){
      if(verbose)
	cout << "Serial_PRBF1in["<<dec<<is<<"] "<< setfill('0')<<setw(7)<<hex << Serial_PRBF1in[iev][is]<<endl;
      //    cout<<"Serial_PRBF1in["<<dec<<is<<"] "<<Serial_PRBF1in[is]<<endl;
      if((Serial_PRBF1in[iev][is] & MASK_3B) == BX && (Serial_PRBF1in[iev][is] & MASK_24B) != 0x000000){ //do I still need the second requirement?
	if(verbose)
	  cout<<"BX found "<<endl;      
	PRB1out_tmp.push_back((Serial_PRBF1in[iev][is]>>3 & MASK_32B)); //dropping BX
      }
    }//for(int is=0; is<Serial_PRBF1in[iev].size(); is++)
    PRB1out->push_back(PRB1out_tmp);

  }//for(int iev=0; iev<NEVT; iev++)


  if(verbose)
    cout<<"-----Done From_PRBFraw_to_PRBF1----"<<endl;

}



void From_PRBF1_to_PRBF2_v2_debug(vector<vector<unsigned long> > PRBF1_1in, vector<vector<unsigned long> > PRBF1_2in,  vector<vector<unsigned long> > *PRB2out, bool verbose){

  //1) Remove "a" label from PRBF1in data and replace with "b"; 2) clone it 7 times (8 clones total); 3) concatenate all 8 clones (raw->1->2 is the last) and the total amount of stubs

  if(verbose)
    cout<<"-----From_PRBF1_to_PRBF2_v2_debug-----"<<endl;



  // //cloning PRBF1_1in 8 times: _0 is for raw->1->2; 1-7 is for BP data
  // //in the future, when BP data available don't bother to clone the BP data
  vector<vector<unsigned long> > PRBF1_1in_0; PRBF1_1in_0.clear();
  vector<vector<unsigned long> > PRBF1_1in_1; PRBF1_1in_1.clear();
  vector<vector<unsigned long> > PRBF1_1in_2; PRBF1_1in_2.clear();
  vector<vector<unsigned long> > PRBF1_1in_3; PRBF1_1in_3.clear();
  vector<vector<unsigned long> > PRBF1_1in_4; PRBF1_1in_4.clear();
  vector<vector<unsigned long> > PRBF1_1in_5; PRBF1_1in_5.clear();
  vector<vector<unsigned long> > PRBF1_1in_6; PRBF1_1in_6.clear();
  vector<vector<unsigned long> > PRBF1_1in_7; PRBF1_1in_7.clear();
  ClonePRBF1Data(PRBF1_1in, &PRBF1_1in_0, &PRBF1_1in_1, &PRBF1_1in_2, &PRBF1_1in_3, &PRBF1_1in_4, &PRBF1_1in_5, &PRBF1_1in_6, &PRBF1_1in_7, false);
  vector<vector<unsigned long> > PRBF1_2in_0; PRBF1_2in_0.clear();
  vector<vector<unsigned long> > PRBF1_2in_1; PRBF1_2in_1.clear();
  vector<vector<unsigned long> > PRBF1_2in_2; PRBF1_2in_2.clear();
  vector<vector<unsigned long> > PRBF1_2in_3; PRBF1_2in_3.clear();
  vector<vector<unsigned long> > PRBF1_2in_4; PRBF1_2in_4.clear();
  vector<vector<unsigned long> > PRBF1_2in_5; PRBF1_2in_5.clear();
  vector<vector<unsigned long> > PRBF1_2in_6; PRBF1_2in_6.clear();
  vector<vector<unsigned long> > PRBF1_2in_7; PRBF1_2in_7.clear();
  ClonePRBF1Data(PRBF1_2in, &PRBF1_2in_0, &PRBF1_2in_1, &PRBF1_2in_2, &PRBF1_2in_3, &PRBF1_2in_4, &PRBF1_2in_5, &PRBF1_2in_6, &PRBF1_2in_7, false);



  for(int iev=0; iev<PRBF1_1in.size(); iev++){
    if(verbose)
      cout<<"PRBF1_1in_1["<<dec<<iev<<"] size "<<dec<<PRBF1_1in_1[iev].size()<<endl;
    vector<unsigned long> PRBF1_to_PRBF2_v2_tmp; 
    PRBF1_to_PRBF2_v2_tmp.push_back(SOFR);
    for(int is=0; is<PRBF1_1in[iev].size(); is++)
      //BP1
      PRBF1_to_PRBF2_v2_tmp.push_back(PRBF1_1in_1[iev][is]);
    for(int is=0; is<PRBF1_1in[iev].size(); is++)
      PRBF1_to_PRBF2_v2_tmp.push_back(PRBF1_1in_2[iev][is]);
    for(int is=0; is<PRBF1_1in[iev].size(); is++)
      PRBF1_to_PRBF2_v2_tmp.push_back(PRBF1_1in_3[iev][is]);
    for(int is=0; is<PRBF1_1in[iev].size(); is++)
      PRBF1_to_PRBF2_v2_tmp.push_back(PRBF1_1in_4[iev][is]);
    for(int is=0; is<PRBF1_1in[iev].size(); is++)
      PRBF1_to_PRBF2_v2_tmp.push_back(PRBF1_1in_5[iev][is]);
    for(int is=0; is<PRBF1_1in[iev].size(); is++)
      PRBF1_to_PRBF2_v2_tmp.push_back(PRBF1_1in_6[iev][is]);
    for(int is=0; is<PRBF1_1in[iev].size(); is++)
      PRBF1_to_PRBF2_v2_tmp.push_back(PRBF1_1in_7[iev][is]);
    //BP2
    for(int is=0; is<PRBF1_2in[iev].size(); is++)
      PRBF1_to_PRBF2_v2_tmp.push_back(PRBF1_2in_1[iev][is]);
    for(int is=0; is<PRBF1_2in[iev].size(); is++)
      PRBF1_to_PRBF2_v2_tmp.push_back(PRBF1_2in_2[iev][is]);
    for(int is=0; is<PRBF1_2in[iev].size(); is++)
      PRBF1_to_PRBF2_v2_tmp.push_back(PRBF1_2in_3[iev][is]);
    for(int is=0; is<PRBF1_2in[iev].size(); is++)
      PRBF1_to_PRBF2_v2_tmp.push_back(PRBF1_2in_4[iev][is]);
    for(int is=0; is<PRBF1_2in[iev].size(); is++)
      PRBF1_to_PRBF2_v2_tmp.push_back(PRBF1_2in_5[iev][is]);
    for(int is=0; is<PRBF1_2in[iev].size(); is++)
      PRBF1_to_PRBF2_v2_tmp.push_back(PRBF1_2in_6[iev][is]);
    for(int is=0; is<PRBF1_2in[iev].size(); is++)
      PRBF1_to_PRBF2_v2_tmp.push_back(PRBF1_2in_7[iev][is]);
    //RTM1
    for(int is=0; is<PRBF1_1in[iev].size(); is++)
      PRBF1_to_PRBF2_v2_tmp.push_back(PRBF1_1in_0[iev][is]);
    //RTM2
    for(int is=0; is<PRBF1_2in[iev].size(); is++)
      PRBF1_to_PRBF2_v2_tmp.push_back(PRBF1_2in_0[iev][is]);
   
    PRBF1_to_PRBF2_v2_tmp.push_back((EOFR | binary(PRBF1_to_PRBF2_v2_tmp.size()-1,false))); 
    PRB2out->push_back(PRBF1_to_PRBF2_v2_tmp);

    PRBF1_to_PRBF2_v2_tmp.clear();
    
   
  }//for(int iev=0; iev<PRBF1_1in.size(); iev++)


  if(verbose)
    cout<<"-----Done From_PRBF1_to_PRBF2_v2_debug-----"<<endl;


}

void From_PRBF1_to_PRBF2_v2(vector<vector<unsigned long> > PRBF1_1in, vector<vector<unsigned long> > PRBF1_2in,  vector<vector<unsigned long> > *PRB2out, bool verbose){

  //1) clone it 7 times (8 clones total); 2) concatenate all 8 clones (raw->1->2 is the last) and the total amount of stubs

  if(verbose)
    cout<<"-----From_PRBF1_to_PRBF2_v2-----"<<endl;



  // //cloning PRBF1_1in 8 times: _0 is for raw->1->2; 1-7 is for BP data
  // //in the future, when BP data available don't bother to clone the BP data
  vector<vector<unsigned long> > PRBF1_1in_0; PRBF1_1in_0.clear();
  vector<vector<unsigned long> > PRBF1_1in_1; PRBF1_1in_1.clear();
  vector<vector<unsigned long> > PRBF1_1in_2; PRBF1_1in_2.clear();
  vector<vector<unsigned long> > PRBF1_1in_3; PRBF1_1in_3.clear();
  vector<vector<unsigned long> > PRBF1_1in_4; PRBF1_1in_4.clear();
  vector<vector<unsigned long> > PRBF1_1in_5; PRBF1_1in_5.clear();
  vector<vector<unsigned long> > PRBF1_1in_6; PRBF1_1in_6.clear();
  vector<vector<unsigned long> > PRBF1_1in_7; PRBF1_1in_7.clear();
  ClonePRBF1Data(PRBF1_1in, &PRBF1_1in_0, &PRBF1_1in_1, &PRBF1_1in_2, &PRBF1_1in_3, &PRBF1_1in_4, &PRBF1_1in_5, &PRBF1_1in_6, &PRBF1_1in_7, false);
  vector<vector<unsigned long> > PRBF1_2in_0; PRBF1_2in_0.clear();
  vector<vector<unsigned long> > PRBF1_2in_1; PRBF1_2in_1.clear();
  vector<vector<unsigned long> > PRBF1_2in_2; PRBF1_2in_2.clear();
  vector<vector<unsigned long> > PRBF1_2in_3; PRBF1_2in_3.clear();
  vector<vector<unsigned long> > PRBF1_2in_4; PRBF1_2in_4.clear();
  vector<vector<unsigned long> > PRBF1_2in_5; PRBF1_2in_5.clear();
  vector<vector<unsigned long> > PRBF1_2in_6; PRBF1_2in_6.clear();
  vector<vector<unsigned long> > PRBF1_2in_7; PRBF1_2in_7.clear();
  ClonePRBF1Data(PRBF1_2in, &PRBF1_2in_0, &PRBF1_2in_1, &PRBF1_2in_2, &PRBF1_2in_3, &PRBF1_2in_4, &PRBF1_2in_5, &PRBF1_2in_6, &PRBF1_2in_7, false);



  for(int iev=0; iev<PRBF1_1in.size(); iev++){
    if(verbose)
      cout<<"PRBF1_1in_1["<<dec<<iev<<"] size "<<dec<<PRBF1_1in_1[iev].size()<<endl;
    vector<unsigned long> PRBF1_to_PRBF2_v2_tmp; 
    PRBF1_to_PRBF2_v2_tmp.push_back(SOFR);
    for(int is=0; is<PRBF1_1in[iev].size(); is++)
      //BP1
      PRBF1_to_PRBF2_v2_tmp.push_back(PRBF1_1in_1[iev][is]);
    for(int is=0; is<PRBF1_1in[iev].size(); is++)
      PRBF1_to_PRBF2_v2_tmp.push_back(PRBF1_1in_2[iev][is]);
    for(int is=0; is<PRBF1_1in[iev].size(); is++)
      PRBF1_to_PRBF2_v2_tmp.push_back(PRBF1_1in_3[iev][is]);
    for(int is=0; is<PRBF1_1in[iev].size(); is++)
      PRBF1_to_PRBF2_v2_tmp.push_back(PRBF1_1in_4[iev][is]);
    for(int is=0; is<PRBF1_1in[iev].size(); is++)
      PRBF1_to_PRBF2_v2_tmp.push_back(PRBF1_1in_5[iev][is]);
    for(int is=0; is<PRBF1_1in[iev].size(); is++)
      PRBF1_to_PRBF2_v2_tmp.push_back(PRBF1_1in_6[iev][is]);
    for(int is=0; is<PRBF1_1in[iev].size(); is++)
      PRBF1_to_PRBF2_v2_tmp.push_back(PRBF1_1in_7[iev][is]);
    //BP2
    for(int is=0; is<PRBF1_2in[iev].size(); is++)
      PRBF1_to_PRBF2_v2_tmp.push_back(PRBF1_2in_1[iev][is]);
    for(int is=0; is<PRBF1_2in[iev].size(); is++)
      PRBF1_to_PRBF2_v2_tmp.push_back(PRBF1_2in_2[iev][is]);
    for(int is=0; is<PRBF1_2in[iev].size(); is++)
      PRBF1_to_PRBF2_v2_tmp.push_back(PRBF1_2in_3[iev][is]);
    for(int is=0; is<PRBF1_2in[iev].size(); is++)
      PRBF1_to_PRBF2_v2_tmp.push_back(PRBF1_2in_4[iev][is]);
    for(int is=0; is<PRBF1_2in[iev].size(); is++)
      PRBF1_to_PRBF2_v2_tmp.push_back(PRBF1_2in_5[iev][is]);
    for(int is=0; is<PRBF1_2in[iev].size(); is++)
      PRBF1_to_PRBF2_v2_tmp.push_back(PRBF1_2in_6[iev][is]);
    for(int is=0; is<PRBF1_2in[iev].size(); is++)
      PRBF1_to_PRBF2_v2_tmp.push_back(PRBF1_2in_7[iev][is]);
    //RTM1
    for(int is=0; is<PRBF1_1in[iev].size(); is++)
      PRBF1_to_PRBF2_v2_tmp.push_back(PRBF1_1in_0[iev][is]);
    //RTM2
    for(int is=0; is<PRBF1_2in[iev].size(); is++)
      PRBF1_to_PRBF2_v2_tmp.push_back(PRBF1_2in_0[iev][is]);
   
    PRBF1_to_PRBF2_v2_tmp.push_back((EOFR | binary(PRBF1_to_PRBF2_v2_tmp.size()-1,false))); 
    PRB2out->push_back(PRBF1_to_PRBF2_v2_tmp);

    PRBF1_to_PRBF2_v2_tmp.clear();
    
   
  }//for(int iev=0; iev<PRBF1_1in.size(); iev++)


  if(verbose)
    cout<<"-----Done From_PRBF1_to_PRBF2_v2-----"<<endl;


}

void ClonePRBF1Data_debug(vector<vector<unsigned long> > PRBF1_1in, vector<vector<unsigned long> > *PRBF1_1out_0, vector<vector<unsigned long> > *PRBF1_1out_1, vector<vector<unsigned long> > *PRBF1_1out_2, vector<vector<unsigned long> > *PRBF1_1out_3, vector<vector<unsigned long> > *PRBF1_1out_4, vector<vector<unsigned long> > *PRBF1_1out_5, vector<vector<unsigned long> > *PRBF1_1out_6, vector<vector<unsigned long> > *PRBF1_1out_7, bool verbose){

  //cloning PRBF1_1in 8 times: _0 is for raw->1->2; 1-7 is for BP data
  //in the future, when BP data available don't bother to clone the BP data
  //remove 0xa and add 0xb for the MS4bits 

  if(verbose)
    cout<<"-------ClonePRBF1Data_debug----"<<endl;







  for(int iev=0; iev<PRBF1_1in.size(); iev++){//PRBF1_1in.size()=NEVT
    vector<unsigned long > PRBF1_1in_0_tmp; PRBF1_1in_0_tmp.clear();
    vector<unsigned long > PRBF1_1in_1_tmp; PRBF1_1in_1_tmp.clear();
    vector<unsigned long > PRBF1_1in_2_tmp; PRBF1_1in_2_tmp.clear();
    vector<unsigned long > PRBF1_1in_3_tmp; PRBF1_1in_3_tmp.clear();
    vector<unsigned long > PRBF1_1in_4_tmp; PRBF1_1in_4_tmp.clear();
    vector<unsigned long > PRBF1_1in_5_tmp; PRBF1_1in_5_tmp.clear();
    vector<unsigned long > PRBF1_1in_6_tmp; PRBF1_1in_6_tmp.clear();
    vector<unsigned long > PRBF1_1in_7_tmp; PRBF1_1in_7_tmp.clear();
    for(int is=0; is<PRBF1_1in[iev].size(); is++){
      unsigned long prbf2_tmp = ((PRBF1_1in[iev][is] & 0x0FFFFFFF) | (0xb<<28)) & MASK_32B;

      PRBF1_1in_0_tmp.push_back(prbf2_tmp);
      PRBF1_1in_1_tmp.push_back(prbf2_tmp);
      PRBF1_1in_2_tmp.push_back(prbf2_tmp);
      PRBF1_1in_3_tmp.push_back(prbf2_tmp);
      PRBF1_1in_4_tmp.push_back(prbf2_tmp);
      PRBF1_1in_5_tmp.push_back(prbf2_tmp);
      PRBF1_1in_6_tmp.push_back(prbf2_tmp);
      PRBF1_1in_7_tmp.push_back(prbf2_tmp);
    }
    PRBF1_1out_0->push_back(PRBF1_1in_0_tmp);
    PRBF1_1out_1->push_back(PRBF1_1in_1_tmp);
    PRBF1_1out_2->push_back(PRBF1_1in_2_tmp);
    PRBF1_1out_3->push_back(PRBF1_1in_3_tmp);
    PRBF1_1out_4->push_back(PRBF1_1in_4_tmp);
    PRBF1_1out_5->push_back(PRBF1_1in_5_tmp);
    PRBF1_1out_6->push_back(PRBF1_1in_6_tmp);
    PRBF1_1out_7->push_back(PRBF1_1in_7_tmp);

  }

  if(verbose)
    cout<<"-------Done ClonePRBF1Data_debug----"<<endl;


}

void ClonePRBF1Data(vector<vector<unsigned long> > PRBF1_1in, vector<vector<unsigned long> > *PRBF1_1out_0, vector<vector<unsigned long> > *PRBF1_1out_1, vector<vector<unsigned long> > *PRBF1_1out_2, vector<vector<unsigned long> > *PRBF1_1out_3, vector<vector<unsigned long> > *PRBF1_1out_4, vector<vector<unsigned long> > *PRBF1_1out_5, vector<vector<unsigned long> > *PRBF1_1out_6, vector<vector<unsigned long> > *PRBF1_1out_7, bool verbose){

  //cloning PRBF1_1in 8 times: _0 is for raw->1->2; 1-7 is for BP data
  //in the future, when BP data available don't bother to clone the BP data
  

  if(verbose)
    cout<<"-------ClonePRBF1Data----"<<endl;







  for(int iev=0; iev<PRBF1_1in.size(); iev++){//PRBF1_1in.size()=NEVT
    vector<unsigned long > PRBF1_1in_0_tmp; PRBF1_1in_0_tmp.clear();
    vector<unsigned long > PRBF1_1in_1_tmp; PRBF1_1in_1_tmp.clear();
    vector<unsigned long > PRBF1_1in_2_tmp; PRBF1_1in_2_tmp.clear();
    vector<unsigned long > PRBF1_1in_3_tmp; PRBF1_1in_3_tmp.clear();
    vector<unsigned long > PRBF1_1in_4_tmp; PRBF1_1in_4_tmp.clear();
    vector<unsigned long > PRBF1_1in_5_tmp; PRBF1_1in_5_tmp.clear();
    vector<unsigned long > PRBF1_1in_6_tmp; PRBF1_1in_6_tmp.clear();
    vector<unsigned long > PRBF1_1in_7_tmp; PRBF1_1in_7_tmp.clear();
    for(int is=0; is<PRBF1_1in[iev].size(); is++){
      unsigned long prbf2_tmp = PRBF1_1in[iev][is] & MASK_32B;

      PRBF1_1in_0_tmp.push_back(prbf2_tmp);
      PRBF1_1in_1_tmp.push_back(prbf2_tmp);
      PRBF1_1in_2_tmp.push_back(prbf2_tmp);
      PRBF1_1in_3_tmp.push_back(prbf2_tmp);
      PRBF1_1in_4_tmp.push_back(prbf2_tmp);
      PRBF1_1in_5_tmp.push_back(prbf2_tmp);
      PRBF1_1in_6_tmp.push_back(prbf2_tmp);
      PRBF1_1in_7_tmp.push_back(prbf2_tmp);
    }
    PRBF1_1out_0->push_back(PRBF1_1in_0_tmp);
    PRBF1_1out_1->push_back(PRBF1_1in_1_tmp);
    PRBF1_1out_2->push_back(PRBF1_1in_2_tmp);
    PRBF1_1out_3->push_back(PRBF1_1in_3_tmp);
    PRBF1_1out_4->push_back(PRBF1_1in_4_tmp);
    PRBF1_1out_5->push_back(PRBF1_1in_5_tmp);
    PRBF1_1out_6->push_back(PRBF1_1in_6_tmp);
    PRBF1_1out_7->push_back(PRBF1_1in_7_tmp);

  }

  if(verbose)
    cout<<"-------Done ClonePRBF1Data----"<<endl;


}

void findEvtNum(vector<vector<vector<unsigned long> > > RXin, vector<unsigned long> *evtnumout, vector<bool> *undefinedEvtNumout, bool verbose){
  //RXin[igth][2] & MASK_3B)

   //always returning evtNum from the first GTH of the given layer (e.g: 3 for layer 6). In case the evtNum of all GTH of that layer do not match return undefinedEvtNum=true
   bool undefinedEvtNum = false; //

  if(verbose)
    cout<<"--------findEvtNum------"<<endl;

  vector<unsigned long> evtnum; evtnum.clear();
  vector<unsigned long> RXin_tmp; RXin_tmp.clear();
  for(int iev=0; iev<NEVT; iev++){
    if(verbose)
      cout<<"++++++iev "<<dec<<iev<<endl;
    for(int igth=0; igth<RXin[iev].size(); igth++){
      RXin_tmp.clear();
      RXin_tmp = RXin[iev][igth];
      
      if(verbose){
	for(int iclk=0; iclk<NSTUBS; iclk++)
	  cout<<"RXin["<<dec<<igth<<"]["<<dec<<iclk<<"] "<< setfill('0')<<setw(8)<<hex << RXin_tmp[iclk] <<endl;	
      }
      evtnum.push_back((RXin_tmp[2] & MASK_3B)<<1 | (RXin_tmp[3]>>31 & MASK_1B));
      
      if(verbose)
	cout<<"evtnum["<<dec<<igth<<"] "<<setfill('0')<<setw(1)<<hex <<evtnum[igth]<<endl;
    }//for(int igth=0; igth<RXin[iev].size(); igth++)
    
    //sanity check: all GTHs store the same evtnum
    unsigned long evtnumtmp = evtnum[0];
    for(int igth=1; igth<RXin[iev].size(); igth++){
      if(evtnumtmp != evtnum[igth]){
	cout<<"GTH 0 and "<<dec<<igth<<"are storing different evtnum, respectively "<<hex<<evtnumtmp<<" "<<hex<<evtnum[igth]<<endl;
	
	
	
	//dumping all the event to be able to track it down more properly in the csv file
	//will print in the cvs style: different gth in the same row
	for(int is=0; is<NSTUBS; is++){
	  for(int igth2=0; igth2<RXin[iev].size(); igth2++)
	    cout<<setfill('0')<<setw(8)<<hex << RXin[iev][igth2][is]<<" ";
	  cout<<endl;
	}

	undefinedEvtNum = true;
	//	exit(1);
      }
    }//for(int igth=1; igth<RXin[iev].size(); igth++)
    evtnumout->push_back(evtnumtmp);
    undefinedEvtNumout->push_back(undefinedEvtNum);
    evtnum.clear();
    undefinedEvtNum = false;
  }//for(int iev=0; iev<NEVT; iev++)

  if(verbose)
    cout<<"--------end findEvtNum------"<<endl;


}

unsigned int checkdifferences(vector<vector<unsigned long> > PRB2, vector<vector<unsigned long> > PRB2ref, vector<bool> undefinedEvtNum, bool verbose){

  unsigned counterr=0;

  if(verbose)
    cout<<"--------checkdifferences-------"<<endl;

  if(PRB2.size() != PRB2ref.size()){
    cout<<"PRB2, PRB2ref size "<<dec<<PRB2.size()<<" "<<dec<<PRB2ref.size()<<" are different"<<endl;
    exit(1);
  }

  if(verbose)
    cout<<"PRB2, PRB2ref size "<<dec<<PRB2.size()<<" "<<dec<<PRB2ref.size()<<endl;
  for(int iev=0; iev<PRB2.size(); iev++){
    //    cout<<"iev "<<dec<<iev<<endl;
    if(undefinedEvtNum[iev]) continue; //do not compare if evtNum is undefined
    if(PRB2ref[iev].size() != PRB2[iev].size()){
      if(verbose)
	cout<<"PRB2[, PRB2ref["<<dec<<iev<<"] size "<<dec<<PRB2[iev].size()<<" "<<dec<<PRB2ref[iev].size()<<" are different"<<endl;
      continue;
    }
    for(int is=0; is<PRB2ref[iev].size(); is++){    
      if(PRB2[iev][is] != PRB2ref[iev][is]){
	cout<<"PRB2, PRB2ref["<<dec<<iev<<"]["<<dec<<is<<"] "<<setfill('0')<<setw(8)<<hex<<PRB2[iev][is]<<" "<<setfill('0')<<setw(8)<<hex<<PRB2ref[iev][is]<<endl;
      }
      if(PRB2[iev][is] != PRB2ref[iev][is])
	 counterr++;
    }//for(int is=0; is<PRB2[iev].size(); is++)
  }//for(int iev=0; iev<PRB2.size(); iev++)




  if(verbose)
    cout<<"--------done checkdifferences-------"<<endl;

  return counterr; 

}

unsigned long locallayer(unsigned long layer){
  //change layer number from 5-10 to 0-5

  return (layer-0x5);

}

void retrievemoduleladder(std::ifstream& ifs, unsigned int imod, unsigned long *modidloc, unsigned long *ladidloc, unsigned long *modladidloc, bool verbose){

  //from https://github.com/zhenhu/TrackTriggerDemo/blob/master/inputfiles/ModuleListBoard00.txt

  if(verbose)
    cout<<"-----retrievemodule-----"<<endl;

  string line;
  vector<unsigned long> modidglob; modidglob.clear();
  vector<unsigned long> ladidglob; ladidglob.clear();
  unsigned long modidloc_tmp, ladidloc_tmp, modladidloc_tmp;
  vector<unsigned long> layN;
  while(getline(ifs,line)){//read one line at the time

    if(verbose)
      cout<<line<<endl;

    unsigned int line_20b = strtoul(line.c_str(),0,16); //base 16

    if(verbose)
      cout<<"line_20b "<<hex<<line_20b<<endl;

    //change to decimal base
    unsigned int lay_dec = line_20b>>20 & MASK_4B;
    unsigned int lay_unit = line_20b>>16 & MASK_4B;
    unsigned int lay_tmp = lay_dec*10+lay_unit;
    layN.push_back(lay_tmp);
    //ladder is 15 donwto 8
    unsigned int lad_dec = line_20b>>12 & MASK_4B;
    unsigned int lad_unit = line_20b>>8 & MASK_4B;
    unsigned int ladidglob_tmp = lad_dec*10+lad_unit;
    ladidglob.push_back(ladidglob_tmp);
    if(verbose){
      cout<<"lad_dec "<<dec<<lad_dec<<endl;
      cout<<"lad_unit "<<dec<<lad_unit<<endl;
      cout<<"ladidglob_tmp "<<dec<<ladidglob_tmp<<endl;
    }
    //module is 7 donwto 0
    unsigned int mod_dec = line_20b>>4 & MASK_4B;
    unsigned int mod_unit = line_20b & MASK_4B;
    unsigned int modidglob_tmp = mod_dec*10+mod_unit;
    if(verbose){
      cout<<"mod_dec "<<dec<<mod_dec<<endl;
      cout<<"mod_unit "<<dec<<mod_unit<<endl;
      cout<<"modidglob_tmp "<<dec<<modidglob_tmp<<endl;
    }    
    modidglob.push_back(modidglob_tmp);

  }

  if(modidglob.size() != 40 || ladidglob.size() != 40 || layN.size() != 40){
    cout<<"More than 40 lines found in "<<ifs<<" Exit"<<endl;
    exit(1);
  }

  if(verbose){
    cout<<"layN, ladidglob, modidglob"<<endl;
    for(int igth=0; igth<40; igth++){
      cout<<dec<<layN[igth]<<" "<<dec<<ladidglob[igth]<<" "<<dec<<modidglob[igth]<<endl;
    }//for(int igth=0; igth<40; igth++)
    cout<<endl;
  }

  //zero suppress according to https://github.com/zhenhu/TrackTriggerDemo/blob/master/inputfiles/ModuleList.txt
  if(layN[imod] == 5){
    ladidloc_tmp = ladidglob[imod] - 2;
    modidloc_tmp = modidglob[imod] - 3;
  }
  else if(layN[imod] == 6){
    ladidloc_tmp = ladidglob[imod] - 3;
    modidloc_tmp = modidglob[imod] - 26;
  }
  else if(layN[imod] == 7){
    ladidloc_tmp = ladidglob[imod] - 4;
    modidloc_tmp = modidglob[imod] - 6;
  }
  else if(layN[imod] == 8){
    ladidloc_tmp = ladidglob[imod] - 6;
    modidloc_tmp = modidglob[imod] - 11;
  }
  else if(layN[imod] == 9){
    ladidloc_tmp = ladidglob[imod] - 7;
    modidloc_tmp = modidglob[imod] - 11;
  }
  else if(layN[imod] == 10){
    ladidloc_tmp = ladidglob[imod] - 8;
    modidloc_tmp = modidglob[imod] - 11;
  }

  if(verbose){
    cout<<"ladidglob, modidglob["<<dec<<imod<<"] "<<dec<<ladidglob[imod]<<", "<<dec<<modidglob[imod]<<endl;
    cout<<"ladidloc_tmp, modidloc_tmp "<<dec<<ladidloc_tmp<<", "<<dec<<modidloc_tmp<<endl;
  }
  modladidloc_tmp = ((modidloc_tmp & MASK_5B)<<4 | (ladidloc_tmp & MASK_4B));

  if(verbose){
    cout<<"imod, ladidloc, modidloc_tmp,  modladidloc "<<dec<<imod<<" "<<dec<<ladidloc_tmp<<" "<<dec<<modidloc_tmp<<" "<<dec<<modladidloc_tmp<<endl;
  }

  *ladidloc = ladidloc_tmp;
  *modidloc = modidloc_tmp;
  *modladidloc = modladidloc_tmp;

  if(verbose)
    cout<<"-----done retrievemodule-----"<<endl;


  /*
global to local from file above
50230 50231 50232 50233 50234 50235 50236 50237
50330 50331 50332 50333 50334 50335 50336 50337
50430 50431 50432 50433 50434 50435 50436 50437

60326 60327 60328 60329 60330 60331 60332 60333 60334 60335
60426 60427 60428 60429 60430 60431 60432 60433 60434 60435
60526 60527 60528 60529 60530 60531 60532 60533 60534 60535
60626 60627 60628 60629 60630 60631 60632 60633 60634 60635

70426 70427 70428 70429 70430 70431 70432 70433 70434 70435 70436 70437
70526 70527 70528 70529 70530 70531 70532 70533 70534 70535 70536 70537
70626 70627 70628 70629 70630 70631 70632 70633 70634 70635 70636 70637
70726 70727 70728 70729 70730 70731 70732 70733 70734 70735 70736 70737
70826 70827 70828 70829 70830 70831 70832 70833 70834 70835 70836 70837
70926 70927 70928 70929 70930 70931 70932 70933 70934 70935 70936 70937

80611 80612 80613 80614 80615 80616 80617
80711 80712 80713 80714 80715 80716 80717
80811 80812 80813 80814 80815 80816 80817
80911 80912 80913 80914 80915 80916 80917
81011 81012 81013 81014 81015 81016 81017
81111 81112 81113 81114 81115 81116 81117
81211 81212 81213 81214 81215 81216 81217

90711 90712 90713 90714 90715 90716 90717 90718 90719
90811 90812 90813 90814 90815 90816 90817 90818 90819
90911 90912 90913 90914 90915 90916 90917 90918 90919
91011 91012 91013 91014 91015 91016 91017 91018 91019
91111 91112 91113 91114 91115 91116 91117 91118 91119
91211 91212 91213 91214 91215 91216 91217 91218 91219
91311 91312 91313 91314 91315 91316 91317 91318 91319
91411 91412 91413 91414 91415 91416 91417 91418 91419
91511 91512 91513 91514 91515 91516 91517 91518 91519
91611 91612 91613 91614 91615 91616 91617 91618 91619

100811 100812 100813 100814 100815 100816 100817 100818 100819 100820
100911 100912 100913 100914 100915 100916 100917 100918 100919 100920
101011 101012 101013 101014 101015 101016 101017 101018 101019 101020
101111 101112 101113 101114 101115 101116 101117 101118 101119 101120
101211 101212 101213 101214 101215 101216 101217 101218 101219 101220
101311 101312 101313 101314 101315 101316 101317 101318 101319 101320
101411 101412 101413 101414 101415 101416 101417 101418 101419 101420
101511 101512 101513 101514 101515 101516 101517 101518 101519 101520
101611 101612 101613 101614 101615 101616 101617 101618 101619 101620
101711 101712 101713 101714 101715 101716 101717 101718 101719 101720
101811 101812 101813 101814 101815 101816 101817 101818 101819 101820
101911 101912 101913 101914 101915 101916 101917 101918 101919 101920
102011 102012 102013 102014 102015 102016 102017 102018 102019 102020
102111 102112 102113 102114 102115 102116 102117 102118 102119 102120
  */


}

//unsigned long retrieveladder(imod){

//}

unsigned int compareoutputref(vector<vector<unsigned long> > PRBF2, vector<vector<vector<unsigned long> > > stubBXidin_L_ref, vector<vector<vector<unsigned long> > > stubPosin_L_ref, vector<vector<vector<unsigned long> > > stubBendvec_L_ref, vector<vector<vector<unsigned long> > > stubBXidin_R_ref, vector<vector<vector<unsigned long> > > stubPosin_R_ref, vector<vector<vector<unsigned long> > > stubBendvec_R_ref, const unsigned int BX, unsigned int RTMmin, unsigned int RTMmax, bool verbose){

  //PRBF2 has the format below as specified in serialize_for_PRBF1

  /*output formta
31 donwto 23  mod_id:  std_logic_vector( 8 downto 0); //as in Seb's module+ladder 5b mod_id, 4 ladder
22 downto 12  phi:     std_logic_vector(10 downto 0);  //as in Seb's stubs position (overall)
11 downto 7  z:       std_logic_vector( 4 downto 0);    //CIC+z (for 2S =0000) //CIC close to z as opposed to Seb
6 downto 3  bend:    std_logic_vector( 3 downto 0); //1more than Seb [1]
2 downto 0  layer:   std_logic_vector( 2 downto 0); //one less than Seb
  */


  unsigned int errcount=0;

  vector<vector<unsigned long> > stubPosin; stubPosin.clear();
  vector<vector<unsigned long> > stubBendvec; stubBendvec.clear();
  vector<vector<unsigned long> > stubBXidin_ref; stubBXidin_ref.clear();
  vector<vector<unsigned long> > stubPosin_ref; stubPosin_ref.clear();
  vector<vector<unsigned long> > stubBendvec_ref; stubBendvec_ref.clear();

  vector<unsigned int> nst_L_tmp; nst_L_tmp.clear();


  if(verbose)
    cout<<"-----compareoutputref----"<<endl;



  if(verbose)
    cout<<"printing info (phi bend) in the output array"<<endl;

    for(int iev=0; iev<PRBF2.size(); iev++){
      vector<unsigned long> stubPosin_tmp; stubPosin_tmp.clear();
      vector<unsigned long> stubBendvec_tmp; stubBendvec_tmp.clear();
      for(int is=1; is<PRBF2[iev].size()-1; is++){//skipping SOF, EOF
	unsigned long mod_id = PRBF2[iev][is]>>23 & MASK_9B;
	unsigned long phi = PRBF2[iev][is]>>12 & MASK_11B;
	unsigned long z = PRBF2[iev][is]>>7 & MASK_5B;
	unsigned long bend = PRBF2[iev][is]>>3 & MASK_4B;
	unsigned long layer = PRBF2[iev][is] & MASK_3B;

	stubPosin_tmp.push_back(phi);
	stubBendvec_tmp.push_back(bend);

	//cout << setfill('0')<<setw(8)<<hex << PRBF2[iev][is]<<endl;;
	if(verbose){
	  cout << dec << bitset<11>(phi) <<" ";
	  cout << dec << bitset<4>(bend) <<" "<<endl;
	}
      }//for(int is=0; is<PRBF2[iev][igth].size(); is++)
      stubPosin.push_back(stubPosin_tmp);
      stubBendvec.push_back(stubBendvec_tmp);
      stubPosin_tmp.clear();
      stubBendvec_tmp.clear();
    }//for(int iev=0; iev<PRBF2.size(); iev++)

  

    if(verbose)
      cout<<"printing info (phi bend) in the LEFT reference arrays"<<endl;
    for(int iev=0; iev<stubPosin_L_ref.size(); iev++){
      vector<unsigned long> stubBXidin_ref_tmp; stubBXidin_ref_tmp.clear();
      vector<unsigned long> stubPosin_ref_tmp; stubPosin_ref_tmp.clear();
      vector<unsigned long>  stubBendvec_ref_tmp; stubBendvec_ref_tmp.clear();
      for(int igth=RTMmin; igth<=RTMmax; igth++){
	for(int is=0; is<stubPosin_L_ref[iev][igth].size(); is++){
	  unsigned long bend4b = stubBendvec_L_ref[iev][igth][is]>>1 & MASK_4B; //discarding the LSB as in serialize_for_PRBF1

	  if(stubBXidin_L_ref[iev][igth][is] == BX){
	    stubBXidin_ref_tmp.push_back(stubBXidin_L_ref[iev][igth][is]);
	    stubPosin_ref_tmp.push_back(stubPosin_L_ref[iev][igth][is]);
	    stubBendvec_ref_tmp.push_back(bend4b);
	  }
	
	  if(verbose){  
	    cout << dec << bitset<3>(stubBXidin_L_ref[iev][igth][is]) <<" ";
	    cout << dec << bitset<11>(stubPosin_L_ref[iev][igth][is]) <<" ";
	    cout << dec << bitset<4>(bend4b)<<" "<<endl;
	  }
	}//for(int is=0; is<PRBF2[iev][igth].size(); is++)
      }//for(int igth=0; igth<PRBF2[igth].size(); igth++)

      nst_L_tmp.push_back((unsigned int)stubPosin_ref_tmp.size());
      if(verbose)
	cout<<"nst_L_tmp "<<nst_L_tmp[0]<<endl;

      if(verbose)
	cout<<"printing info (phi bend) in the RIGHT reference arrays"<<endl;

      //      for(int igth=0; igth<stubPosin_R_ref[iev].size(); igth++){
      for(int igth=RTMmin; igth<=RTMmax; igth++){
	for(int is=0; is<stubPosin_R_ref[iev][igth].size(); is++){
	  unsigned long bend4b = stubBendvec_R_ref[iev][igth][is]>>1 & MASK_4B; //discarding the LSB as in serialize_for_PRBF1
	  
	  if(stubBXidin_R_ref[iev][igth][is] == BX){
	    stubBXidin_ref_tmp.push_back(stubBXidin_R_ref[iev][igth][is]);
	    stubPosin_ref_tmp.push_back(stubPosin_R_ref[iev][igth][is]);
	    stubBendvec_ref_tmp.push_back(bend4b);
	  }
	  if(verbose){	  
	    cout << dec << bitset<3>(stubBXidin_R_ref[iev][igth][is]) <<" ";
	    cout << dec << bitset<11>(stubPosin_R_ref[iev][igth][is]) <<" ";
	    cout << dec << bitset<4>(bend4b)<<" "<<endl;
	  }
	}//for(int is=0; is<PRBF2[iev][igth].size(); is++)
      }//for(int igth=0; igth<PRBF2[igth].size(); igth++)
      stubBXidin_ref.push_back(stubBXidin_ref_tmp);
      stubPosin_ref.push_back(stubPosin_ref_tmp);
      stubBendvec_ref.push_back(stubBendvec_ref_tmp);
      stubBXidin_ref_tmp.clear();
      stubPosin_ref_tmp.clear();
      stubBendvec_ref_tmp.clear();
    }//for(int iev=0; iev<PRBF2.size(); iev++) 
    
    
    
    
    //assuming PRBF2[iev].size() = 8*stubPosin_ref[iev].size()
    //comparing only first set of stub info since the other 7 are clones
    //PRBF2 has 7 sets of  the stubs from _L first and then 7 sets (BP) of the the stubs from _R (see From_PRBF1_to_PRBF2_v2_debug), after that 1 sets of _L stubs (RTM), 1 set from _R

    if(verbose)
    cout<<"comparing output with reference: phiref bendref | phi bend"<<endl;
    for(int iev=0; iev<stubPosin_ref.size(); iev++){    
      if(verbose){
	cout<<"stubBXidin_ref["<<dec<<iev<<"] "<<dec<<stubBXidin_ref[iev].size()<<endl;
	cout<<"stubPosin_ref["<<dec<<iev<<"] "<<dec<<stubPosin_ref[iev].size()<<endl;
	cout<<"stubBendvec_ref["<<dec<<iev<<"] "<<dec<<stubBendvec_ref[iev].size()<<endl;
	cout<<"PRBF2["<<dec<<iev<<"] "<<dec<<PRBF2[iev].size()<<endl;
      }
      for(int is=0; is<stubPosin_ref[iev].size(); is++){	
	//      cout<<"is "<<dec<<is<<" "<<dec<<nst_L_tmp[iev]<<endl;
	
	if(verbose){
	  cout << dec << bitset<11>(stubPosin_ref[iev][is]) <<" ";
	  cout << dec << bitset<4>(stubBendvec_ref[iev][is])<<" | ";
	  if(is<nst_L_tmp[iev]){
	    //	  cout << setfill('0')<<setw(8)<<hex << PRBF2[iev][is+1]<<endl;
	    cout << dec << bitset<11>(stubPosin[iev][is]) <<" ";
	    cout << dec << bitset<4>(stubBendvec[iev][is])<<endl;
	  }
	  else{
	    cout << dec << bitset<11>(stubPosin[iev][is+nst_L_tmp[iev]*6]) <<" "; ///*6 is to skip all the _L stub info and go to _R 
	    cout << dec << bitset<4>(stubBendvec[iev][is+nst_L_tmp[iev]*6])<<endl;
	    
	  }
	}

      }//for(int is=0; is<stubPosin_R_ref[iev].size()
    }//for(int iev=0; iev<stubPosin_R_ref.size(); iev++)

    for(int iev=0; iev<stubPosin_R_ref.size(); iev++){
      for(int is=0; is<stubPosin_ref[iev].size(); is++){
	unsigned long stubPosin_tmp;
	unsigned long stubBendvec_tmp;
	if(is<nst_L_tmp[iev]){
	  stubPosin_tmp = stubPosin[iev][is];
	  stubBendvec_tmp = stubBendvec[iev][is];
	}
	else{
	  stubPosin_tmp = stubPosin[iev][is+nst_L_tmp[iev]*6];
	  stubBendvec_tmp = stubBendvec[iev][is+nst_L_tmp[iev]*6];	
	}




	if(((stubPosin_ref[iev][is] & MASK_11B) != (stubPosin_tmp & MASK_11B)) || ((stubBendvec_ref[iev][is] & MASK_4B) != (stubBendvec_tmp & MASK_4B))){
	  cout<<"Difference between reference and output. Printing phiref bendref | phi bend"<<endl;
	  cout << dec << bitset<11>(stubPosin_ref[iev][is]) <<" ";
	  cout << dec << bitset<4>(stubBendvec_ref[iev][is])<<" | ";
	  if(is<nst_L_tmp[iev]){
	    cout << dec << bitset<11>(stubPosin_tmp) <<" ";
	    cout << dec << bitset<4>(stubBendvec_tmp)<<endl;
	    
	    errcount++;
	    
	  }
	}
	

      }//for(int is=0; is<stubPosin_R_ref[iev].size()
    }//for(int iev=0; iev<stubPosin_R_ref.size(); iev++)
  
  
    return errcount;
  
    if(verbose)
      cout<<"-----end compareoutputref----"<<endl;
  
}


unsigned int sanitycheck(vector<vector<unsigned long> > PRBF2, unsigned int layN, bool verbose){
  //2S module: z=0000 check that and return errors if not

  unsigned int err=0;

  for(int iev=0; iev<PRBF2.size(); iev++){
        for(int is=1; is<PRBF2[iev].size()-1; is++){//skipping SOF, EOF
	  unsigned long z = PRBF2[iev][is]>>(10-3) & MASK_4B;//10 from serialize; 3 because From_PRBFraw_to_PRBF1 shifts by 3

	  if(verbose){
	    cout << bitset<32>(PRBF2[iev][is])<<" ";
	    cout << bitset<4>(z) <<endl;
	    
	  }
	  
	  if(z != 0 & layN>=3){
	    if(verbose)
	      cout<<"2S module cannot have z!=0000...instead I found z "<<bitset<4>(z)<<endl;
	    err++;
	  }
      }//for(int is=0; is<PRBF2[iev][igth].size(); is++)
  }//for(int iev=0; iev<PRBF2.size(); iev++)

  return err;

}
