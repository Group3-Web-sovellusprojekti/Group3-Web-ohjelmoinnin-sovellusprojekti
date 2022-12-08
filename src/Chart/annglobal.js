import { useEffect, useState } from "react";
import { Line } from "react-chartjs-2";
import { Chart } from "chart.js/auto";
import "chartjs-adapter-luxon";
import axios from 'axios';



 function annglobal() {

  const [data,setData] = useState([])      //luodaan data olio ja siihen usestate

  const getData = () => {
    axios
      .get("http://localhost:3000/annglobal")  //haetaan url (proxy tehty 3000 tonni porttiin)
      .then(response => {
        console.log(response.data);            //haetaan databasesta data setdatalle
        setData(response.data);
      })
      .catch((error) => {
        console.log(error);
      });
  };
  
  useEffect(() => {
    getData();        
  }, []);
 

  
  const chart = {                                     //luodaan Chartin data
    datasets: [{
      label: "annual global",                         // datan nimi(yhdelle käyrälle)
      data: data,                                     // mitä dataa käyräällä käytetään
      borderColor: "rgb(255, 99, 132)",               // väri ja taustan väri
      backgroundColor: "rgba(255, 99, 132, 0.5)", 
      parsing: {
        xAxisKey: "timeA",                            //määritellään mitkä columnit tulee millekki akselille
        yAxisKey: "global",
      },
      pointRadius: 1,                                 //chartin pisteiden koko
    },],
  };

  const options = {
    responsive: true,                                  // määritellään responsiivisuus
    plugins: {
      legend:{
        position: "bottom",                            // mihin kohtaa labeli tulee                           
      },
      title: {
        display: true,
        text: "kokeillaas ny",                         //otsikko chartille
      },
    },
    scales: {
      x: {
        type: "time",                                 //määritellään data tyyppi
        time: {
          unit: "year",                               // määritellään miten data skaalautuu(kuukausina,vuosina,tunteina... jne) onko aika, määörä kilo yms.
        },
      },
    },
  };

  return(  

  
    <div className="test2">                             
      <div style={{ width: "700px" }}>          
         <Line options = {options} data={chart} />        
      </div>
    </div>
  );
  }                                                     //määritellään chartin koko ja kutsutaan options ja chart            
  export default annglobal;