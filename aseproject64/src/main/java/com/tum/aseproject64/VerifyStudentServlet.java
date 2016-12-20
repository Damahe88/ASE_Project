/**
 * Copyright 2016 Google Inc. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.tum.aseproject64;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.List;
import java.util.ArrayList;

import com.googlecode.objectify.ObjectifyService;

public class VerifyStudentServlet extends HttpServlet {

//TODO: Write Student verification algorithm

  @Override
  public void doGet(HttpServletRequest request, HttpServletResponse response) 
      throws IOException 
  {
    
    response.setContentType("text/plain");
    response.getWriter().println("Hello Student!");

    String firstname = request.getParameter("firstname");
    String lastname = request.getParameter("lastname");
    String matrikelnumber = request.getParameter("matrikelnumber");

    Student student = new Student(firstname, lastname, matrikelnumber);

    //ObjectifyService.ofy().save().entity(student).now();

	response.getWriter().println("Your name is: " + firstname + " " + lastname);
  response.getWriter().println("Matrikel number: " +matrikelnumber);


	}
}
