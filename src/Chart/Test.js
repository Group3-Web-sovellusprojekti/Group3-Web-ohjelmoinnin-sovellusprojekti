import { useState } from "react";
import LineChart from "../chartComponents/LineChart";
import { UserData } from "../chartComponents/Data";


function Test() {
  const [userData, setUserData] = useState({
    labels: UserData.map((data) => data.year),
    datasets: [
      {
        label: "Users Gained",
        data: UserData.map((data) => data.userGain),
        backgroundColor: [
          "rgba(75,192,192,1)",
          "#ecf0f1",
          "#50AF95",
          "#f3ba2f",
          "#2a71d0",
        ],
        borderColor: "black",
        borderWidth: 2,
      },
    ],
  });

  return (
    <div className="test">
      <div style={{ width: 700 }}>
        <LineChart chartData={userData} />
      </div>
    </div>
  );
}

export default Test;