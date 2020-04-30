/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyektubesdeklaratif;

import org.jpl7.Query;

/**
 *
 * @author SILVER
 */
public class ProyekTubesDeklaratif {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        String jawaban="100";
         Query q = new Query("consult('kb.pl')");
       System.out.println("  "+(q.hasSolution()?"Succes":"no"));
        String bud = "toni", toni ="toni", Benar ="Horeee... Selamat Kamu Benar", Salah="Upss Salah Coba lagi dong", aa;
        String t="findsecondlast("+jawaban+",[30,45,70,100,150])";
        Query q2 = new Query(t);
        aa = (q2.hasSolution()?Benar:Salah);
        System.out.println(aa);
    }
    
}
