/*
 * Licensed under the Apache License, Version 2.0 (the "License") you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */

package com.google.gwt.gwtcanvasdemo.client

public class SpringObject {
  public static val double springStrength = 0.1
  public static val double friction = 0.8
  public Vector pos
  public Vector vel
  public Vector goal
  
  new(Vector start) {
    this.pos = new Vector(start)
    this.vel = new Vector(0, 0)
    this.goal = new Vector(start)
  }
  
  def void update() {
    val d = Vector::sub(goal, pos)
    d.mult(springStrength)
    vel.add(d)
    vel.mult(friction)
    pos.add(vel)
  }
}