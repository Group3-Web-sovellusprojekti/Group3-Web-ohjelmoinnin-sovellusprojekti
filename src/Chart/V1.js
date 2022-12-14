import { useEffect, useState } from "react";
import { Line } from "react-chartjs-2";
import { Chart } from "chart.js/auto";
import "chartjs-adapter-luxon";
import axios from "axios";
function V1() {
  const [data1, setData] = useState([]);
  const getData = () => {
    axios
      .get("http://localhost:3000/annnorth")
      .then((response) => {
        console.log(response.data);
        setData(response.data);
      })
      .catch((error) => {
        console.log(error);
      });
  };

  useEffect(() => {
    getData();
  }, []);

  const [data2, setData2] = useState([]);
  const getData2 = () => {
    axios
      .get("http://localhost:3000/annsouth")
      .then((response) => {
        console.log(response.data);
        setData2(response.data);
      })
      .catch((error) => {
        console.log(error);
      });
  };

  useEffect(() => {
    getData2();
  }, []);

  const [data3, setData3] = useState([]);
  const getData3 = () => {
    axios
      .get("http://localhost:3000/annglobal")
      .then((response) => {
        console.log(response.data);
        setData3(response.data);
      })
      .catch((error) => {
        console.log(error);
      });
  };

  useEffect(() => {
    getData3();
  }, []);

  const [data4, setData4] = useState([]);
  const getData4 = () => {
    axios
      .get("http://localhost:3000/monsouth")
      .then((response) => {
        console.log(response.data);
        setData4(response.data);
      })
      .catch((error) => {
        console.log(error);
      });
  };

  useEffect(() => {
    getData4();
  }, []);

  const [data5, setData5] = useState([]);
  const getData5 = () => {
    axios
      .get("http://localhost:3000/monglobal")
      .then((response) => {
        console.log(response.data);
        setData5(response.data);
      })
      .catch((error) => {
        console.log(error);
      });
  };

  useEffect(() => {
    getData5();
  }, []);

  const [data6, setData6] = useState([]);
  const getData6 = () => {
    axios
      .get("http://localhost:3000/monnorth")
      .then((response) => {
        console.log(response.data);
        setData6(response.data);
      })
      .catch((error) => {
        console.log(error);
      });
  };

  useEffect(() => {
    getData6();
  }, []);

  const chart = {
    datasets: [
      {
        label: "annual north",
        data: data1,
        borderColor: "rgb(255, 99, 132)",
        backgroundColor: "rgba(255, 99, 132, 0.5)",
        parsing: {
          xAxisKey: "timeA",
          yAxisKey: "north",
        },
        pointRadius: 1,
      },
      {
        label: "annual south",
        data: data2,
        borderColor: "rgb(100, 105, 255)",
        backgroundColor: "rgba(100, 105, 255, 0.5)",
        parsing: {
          xAxisKey: "timeA",
          yAxisKey: "south",
        },
        pointRadius: 1,
      },
      {
        label: "annual global",
        data: data3,
        borderColor: "rgb(110, 255, 100)",
        backgroundColor: "rgba(110, 255, 100, 0.5)",
        parsing: {
          xAxisKey: "timeA",
          yAxisKey: "global",
        },
        pointRadius: 1,
      },
      {
        label: "monthly south",
        data: data4,
        borderColor: "rgb(1, 1, 1)",
        backgroundColor: "rgba(1, 1, 1, 0.5)",
        parsing: {
          xAxisKey: "timeB",
          yAxisKey: "south",
        },
        pointRadius: 1,
      },
      {
        label: "monthly global",
        data: data5,
        borderColor: "rgb(230, 0, 255)",
        backgroundColor: "rgba(230, 0, 255, 0.5)",
        parsing: {
          xAxisKey: "timeB",
          yAxisKey: "global",
        },
        pointRadius: 1,
      },
      {
        label: "monthly north",
        data: data6,
        borderColor: "rgb(0, 255, 255)",
        backgroundColor: "rgba(0, 255, 255, 0.5)",
        parsing: {
          xAxisKey: "timeB",
          yAxisKey: "north",
        },
        pointRadius: 1,
      },
    ],
  };

  const options = {
    responsive: true,
    sacked: false,
    plugins: {
      legend: {
        position: "bottom",
      },
      title: {
        display: true,
        text: "Visualisointi 1",
      },
    },
    scales: {
      x: {
        type: "time",
        time: {
          unit: "year",
        },
        title: {
          display: true,
          text: "Date",
        },
      },
      y: {
        title: {
          display: true,
          text: "temperature anomaly",
        },
      },
    },
  };

  return (
    <div className="V1">
      <div style={{ Width: 1000 }}>
        <Line options={options} data={chart} />
      </div>
    </div>
  );
}
export default V1;
