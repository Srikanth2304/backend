import React from "react";
import userpic from "./Pdf/user.png"
// import profilepic from "./Pdf/profilepic.png"
import './style/AboutStyle.css';
// font awesome
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'

function Profile() {
    return (
        <div className="container emp-profile" >
            <div className="row">
                <div className="col-md-3 mt-5 me-4">
                    <img src={userpic} />
                    {/* <img src={profilepic} /> */}
                </div>
                <div className="col-md-8 mt-3">
                    <div className="profile-head">
                        <h5  style={{fontWeight:"bold"}}>Rahul Agarwal</h5>
                        <p className="profile-rating mt-3 mb-1" ><strong>Role ID: </strong><span style={{color:"rgb(33,37,41)"}}>FMO</span></p>
                        <p className="profile-rating mt-3 mb-1" ><strong>Bank ID:</strong> <span style={{color:"rgb(33,37,41)"}}>2013306</span></p>
                        <p className="profile-rating mt-3 mb-5"  ><strong>Location: </strong><span style={{color:"rgb(33,37,41)"}}>Chennai</span></p>
                        <ul class="nav nav-pills" id="myTab" role="tablist" style={{ listStyleType: "none", padding: "0" }}>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link active " id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true" >Trade Details</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link btn" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">Profile</button>
                            </li>
                        </ul>
                    </div>
                </div>

                <div className="row mt-2 mb-3">

                    {/*left side url*/}

                    <div className="col-md-3 me-4 " style={{ backgroundColor: '#e6e7e8' ,height:"auto"}}>
                        <div className="profile-work mt-3">
                            <h3>Socials</h3>
                            <ul className="social-list" style={{ listStyleType: "none", padding: "0" }}>
                                {/* Bridge doesn't have a common icon representation, using generic 'link' icon for now */}
                                <li style={{ marginBottom: "10px" }}>
                                    <FontAwesomeIcon icon="fa-solid fa-bridge " size="lg" style={{color: "#039be5"}}/>
                                    <a href="https://www.Linkedin.com" target="top" style={{ textDecoration: "none", marginLeft: "8px", color: "inherit" }}>Bridge</a>
                                </li>
                                <li style={{ marginBottom: "10px" }}>
                                    <FontAwesomeIcon icon="fa-brands fa-linkedin" size="lg" style={{color: "#0d6efd"}}/>
                                    <a href="https://www.Linkedin.com" target="_blank" rel="noreferrer" style={{ textDecoration: "none", marginLeft: "8px", color: "inherit" }}>LinkedIn</a>
                                </li>
                                <li style={{ marginBottom: "10px" }}>
                                    <FontAwesomeIcon icon="fa-brands fa-twitter" size="lg" style={{color: "#228be6"}}/>
                                    <a href="https://www.Linkedin.com" target="_blank" rel="noreferrer" style={{ textDecoration: "none", marginLeft: "8px", color: "inherit" }}>Twitter</a>
                                </li>
                                <li style={{ marginBottom: "10px" }}>
                                    <FontAwesomeIcon icon="fa-brands fa-github" size="lg"/>
                                    <a href="https://www.Linkedin.com" target="_blank" rel="noreferrer" style={{ textDecoration: "none", marginLeft: "8px", color: "inherit" }}>GitHub</a>
                                </li>

                            </ul>

                        </div>
                    </div>

                    {/*right side toggle*/}

                    <div className="col-md-8 navbar-gradient" style={{ backgroundColor: "#f2f2f2", padding: '20px' }}>

                        <div class="tab-content " id="myTabContent" >
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <table className='table table-striped table-hover left-aligned-table' style={{ width: "80%", margin: 'auto' }}>
                                    <thead style={{fontSize:"28px" }}>
                                        <th colSpan={2}>Trade Details</th>
                                    </thead>
                                    
                                    <tbody>
                                        
                                            <tr><td ><strong>Total Trade</strong> </td><td>32</td></tr>
                                            <tr><td><strong>Total Rejection</strong></td><td>10 </td></tr>
                                            <tr><td><strong>Makers Action</strong></td><td>19</td></tr>
                                            <tr><td><strong>Checkers Action</strong></td><td>3</td></tr>
                                        
                                    </tbody>                                
                                </table>
                            </div>
                            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                <table className='table table-striped table-hover left-aligned-table' style={{ width: "80%", margin: 'auto' }}>
                                <thead style={{fontSize:"28px"}}>
                                        <th colSpan={2} >Profile</th>
                                    </thead>
                                    <tbody>
                                        <tr ><td><strong>Title</strong> </td><td>Development Engineer</td></tr>
                                        <tr><td><strong>Department</strong></td><td>IT</td></tr>
                                        <tr><td><strong>Languages Spoken</strong> </td><td>English,Tamil</td></tr>
                                        <tr><td><strong>Business Division</strong></td><td>1373</td></tr>
                                        <tr><td><strong>Member Since</strong></td><td>12/09/2013</td></tr>
                                        <tr><td><strong>Address</strong></td><td>203,Shollingallanur,Chennai</td></tr>
                                        <tr><td><strong>Last Signed in</strong></td><td>18/08/2023</td></tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    )

}

export default Profile;
