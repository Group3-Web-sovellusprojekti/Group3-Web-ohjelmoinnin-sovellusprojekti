import React, { useState, useEffect } from "react";
import { Line } from "react-chartjs-2";
import axios from "axios";

const Test2 = () => {
  


  const chart = () => {

    axios
      .get("localhost:808")
      .then(res => {
        console.log(res);
        for (const dataObj of res.data.data) {
        }
        setChartData({
          labels: empAge,
          datasets: [
            {
              label: "",
              data: empSal,
              backgroundColor: ["rgba(75, 192, 192, 0.6)"],
              borderWidth: 4
            }
          ]
        });
      })
      .catch(err => {
        console.log(err);
      });
    console.log(empSal, empAge);
  };

  useEffect(() => {
    chart();
  }, []);
  return (
    <div className="test2">
    <div style={{ width: 700 }}>
      <LineChart chartData={userData} />
    </div>
  </div>
);
  }

export default Test2;