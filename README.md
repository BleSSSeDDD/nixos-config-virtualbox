<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        NixOS VirtualBox Configuration
    </head>
    <body>
        <div class="container">
            <div class="readme-card">
                <div class="header">
                    <h1>🚀 NixOS VirtualBox Configuration</h1>
                    <p class="subtitle">A streamlined NixOS setup optimized for VirtualBox VMs</p>
                    <div class="badges">
                        <div class="badge">🎯 VirtualBox Optimized</div>
                        <div class="badge">🖥️ KDE Plasma 5</div>
                        <div class="badge">⚡ Quick Setup</div>
                        <div class="badge">🔧 Development Ready</div>
                    </div>
                </div>
                <div class="content">
                    <div class="section">
                        <h2>✨ Features</h2>
                        <div class="features-grid">
                            <div class="feature-card">
                                <h3>🖥️ Desktop Environment</h3>
                                <p>KDE Plasma 5 with SDDM display manager and auto-login</p>
                            </div>
                            <div class="feature-card">
                                <h3>🔧 VirtualBox Integration</h3>
                                <p>Full Guest Additions support with optimized graphics</p>
                            </div>
                            <div class="feature-card">
                                <h3>📦 Essential Tools</h3>
                                <p>Pre-configured with development and system utilities</p>
                            </div>
                            <div class="feature-card">
                                <h3>⚡ Automated Setup</h3>
                                <p>One-command installation with minimal user input</p>
                            </div>
                        </div>
                    </div>
                    <div class="section">
                        <h2>🚀 Quick Installation</h2>
                        <div class="step">
                            <div>
                                <h3>Create Virtual Machine</h3>
                                <p>Create a new VM in VirtualBox using the minimal NixOS ISO from the <a href="https://nixos.org/download" target="_blank">official website</a></p>
                            </div>
                        </div>
                        <div class="step">
                            <div>
                                <h3>Run Installation Script</h3>
                                <p>Boot into the Live environment and execute:</p>
                                <div class="code-block">
    sudo curl -o install.sh "https://raw.githubusercontent.com/BleSSSeDDD/nixos-config-blessseddd/refs/heads/main/install.sh"
    sudo chmod +x install.sh
    sudo ./install.sh
                                </div>
                            </div>
                        </div>
                        <div class="step">
                            <div>
                                <h3>Final Setup</h3>
                                <p>Remove the Live CD from VirtualBox and reboot. Your system will be ready to use! 🎉</p>
                            </div>
                        </div>
                    </div>
                    <div class="section">
                        <h2>⚙️ Configuration Highlights</h2>
                        <div class="features-grid">
                            <div class="feature-card">
                                <h3>System</h3>
                                <ul>
                                    <li>Bootloader: GRUB with OSProber</li>
                                    <li>Network: NetworkManager</li>
                                    <li>Security: Passwordless sudo</li>
                                </ul>
                            </div>
                            <div class="feature-card">
                                <h3>User Setup</h3>
                                <ul>
                                    <li>Username: nixos</li>
                                    <li>Default password: 12345678</li>
                                    <li>Groups: wheel, networkmanager, video</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="section">
                        <h2>📦 Pre-installed Packages</h2>
                        <div class="package-list">
                            <div class="package">vim</div>
                            <div class="package">wget</div>
                            <div class="package">curl</div>
                            <div class="package">git</div>
                            <div class="package">htop</div>
                            <div class="package">file</div>
                            <div class="package">pciutils</div>
                            <div class="package">usbutils</div>
                        </div>
                    </div>
                    <div class="section">
                        <h2>🐛 Troubleshooting</h2>
                        <div class="feature-card">
                            <h3>Black Screen After Installation?</h3>
                            <ul>
                                <li>Ensure Live CD has been removed from VirtualBox</li>
                                <li>Check VirtualBox display settings (try VMSVGA graphics controller)</li>
                                <li>Verify sufficient video memory allocation</li>
                                <li>Enable 3D acceleration in VM settings</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="footer">
                    <p>Made with <span class="heart">❤️</span> for the NixOS community</p>
                    <p>⭐ If this configuration helps you, consider starring the repository!</p>
                </div>
            </div>
        </div>
    </body>
</html>
