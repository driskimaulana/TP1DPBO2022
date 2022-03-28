/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package books_proj;

import java.awt.Color;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Image;
import java.awt.Insets;
import java.awt.image.BufferedImage;
import java.net.URL;
import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JPanel;

/**
 *
 * @author driskimaulana
 */
public class AuthorPanel extends JPanel {
    
    private JLabel label_name = new JLabel("Marc Manson");
    private JLabel label_jumlahBuku = new JLabel("3" + "Jumlah Buku");
    private JButton btn_update = new JButton("Update");
    private JButton btn_delete = new JButton("Delete");
    private JLabel label_img = new JLabel();
    
    public AuthorPanel(){
        
        this.setBackground(Color.red);
        this.setSize(200, 200);
        GridBagConstraints constraints = new GridBagConstraints();
        constraints.anchor = GridBagConstraints.WEST;
        constraints.insets = new Insets(10, 10, 10, 10);
        
        // add components to panel
        constraints.gridx = 0;
        constraints.gridy = 0;
        constraints.gridheight = 1;
        constraints.gridwidth = 1;
        try {
            this.setSize(200, 200);
            URL url = new URL("https://pbs.twimg.com/profile_images/1204727725836996608/ByShSrLR_400x400.jpg");
            BufferedImage image = ImageIO.read(url);
            JLabel MYJ = new JLabel(new ImageIcon(image));
            image = ImageIO.read(url);
//            URL imgUrl = new URL("https://pbs.twimg.com/profile_images/1204727725836996608/ByShSrLR_400x400.jpg");
//            BufferedImage img = ImageIO.read(imgUrl);
//            label_img.setIcon(new ImageIcon(img));
            
        } catch (Exception e) {
            System.err.println("Failed to load img" + e.getMessage());
        }
        
//        label_img.setIcon(ImageIcon(getClass().getPackage("/books_proj/images/manson.jpg")));
        
        this.add(label_img, constraints);
        
        constraints.gridx = 1;
        constraints.gridy = 0;
        this.add(label_name, constraints);
        
        constraints.gridx = 1;
        constraints.gridy = 1;
        this.add(label_jumlahBuku, constraints);
                        
    }
    
}
