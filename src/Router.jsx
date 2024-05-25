import { BrowserRouter, Route, Routes } from "react-router-dom";
import { JobPage, StatusPage } from "./pages";

const RouterRoots = () =>{
    return(
        <BrowserRouter>
            <Routes>
                <Route path="/" element={<JobPage />} />
                <Route path="/status" element={<StatusPage />} />
            </Routes>
        </BrowserRouter>
    )
}
export default RouterRoots;