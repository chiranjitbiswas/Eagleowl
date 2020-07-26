import React from 'react';
import Header from '../header/Header';
import './Layout.css';


export default ({ children }) => (
    <div>
    <Header />
    {children}
    </div>
)
