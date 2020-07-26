import React from 'react';
import './home.css';
import BackgroundImg from '../../img/background.jpeg';



function Home() {
  return (
    <div className="main-cover" style={{ backgroundImage: `url(` + BackgroundImg + `)` }}>
      <div className="inner-cover">
        <div className="box-container">
          Demo Order List
          <br/>
          <a className="button" href={"/order"}>Check List</a>
        </div>
      </div>
    </div>
  );
}

export default Home;

