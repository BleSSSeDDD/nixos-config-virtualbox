<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NixOS VirtualBox Configuration</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            color: #333;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        .readme-card {
            background: white;
            border-radius: 20px;
            box-shadow: 0 20px 40px rgba(0,0,0,0.1);
            overflow: hidden;
            margin: 40px auto;
            backdrop-filter: blur(10px);
        }

        .header {
            background: linear-gradient(135deg, #2c3e50 0%, #3498db 100%);
            color: white;
            padding: 50px 40px;
            text-align: center;
            position: relative;
        }

        .header::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100" preserveAspectRatio="none"><path d="M0,0 L100,0 L100,100 Z" fill="rgba(255,255,255,0.1)"/></svg>');
            background-size: cover;
        }

        .header h1 {
            font-size: 3em;
            margin-bottom: 10px;
            position: relative;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
        }

        .header .subtitle {
            font-size: 1.3em;
            opacity: 0.9;
            position: relative;
        }

        .badges {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-top: 20px;
            flex-wrap: wrap;
        }

        .badge {
            background: rgba(255,255,255,0.2);
            padding: 8px 16px;
            border-radius: 20px;
            font-size: 0.9em;
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255,255,255,0.3);
        }

        .content {
            padding: 50px;
        }

        .section {
            margin-bottom: 50px;
        }

        .section h2 {
            color: #2c3e50;
            margin-bottom: 20px;
            font-size: 1.8em;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .section h2::before {
            content: '';
            width: 4px;
            height: 25px;
            background: #3498db;
            border-radius: 2px;
        }

        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 25px;
            margin-top: 30px;
        }

        .feature-card {
            background: #f8f9fa;
            padding: 25px;
            border-radius: 15px;
            border-left: 4px solid #3498db;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .feature-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
        }

        .feature-card h3 {
            color: #2c3e50;
            margin-bottom: 10px;
            font-size: 1.2em;
        }

        .code-block {
            background: #2c3e50;
            color: #ecf0f1;
            padding: 25px;
            border-radius: 10px;
            font-family: 'Courier New', monospace;
            margin: 20px 0;
            overflow-x: auto;
            position: relative;
        }

        .code-block::before {
            content: '📋';
            position: absolute;
            top: 10px;
            right: 15px;
            font-size: 1.2em;
            cursor: pointer;
        }

        .step {
            display: flex;
            align-items: flex-start;
            gap: 20px;
            margin-bottom: 30px;
            padding: 20px;
            background: #f8f9fa;
            border-radius: 10px;
        }

        .step-number {
            background: #3498db;
            color: white;
            width: 40px;
            height: 40px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: bold;
            flex-shrink: 0;
        }

        .package-list {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 15px;
            margin-top: 20px;
        }

        .package {
            background: #e8f4fc;
            padding: 15px;
            border-radius: 8px;
            text-align: center;
            border: 1px solid #3498db33;
        }

        .footer {
            background: #2c3e50;
            color: white;
            text-align: center;
            padding: 30px;
            margin-top: 50px;
        }

        .heart {
            color: #e74c3c;
            animation: heartbeat 1.5s ease-in-out infinite;
        }

        @keyframes heartbeat {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.1); }
        }

        @media (max-width: 768px) {
            .header h1 {
                font-size: 2em;
            }
            
            .content {
                padding: 30px 20px;
            }
            
            .features-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
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
                        <div class="step-number">1</div>
                        <div>
                            <h3>Create Virtual Machine</h3>
                            <p>Create a new VM in VirtualBox using the minimal NixOS ISO from the <a href="https://nixos.org/download" target="_blank">official website</a></p>
                        </div>
                    </div>
                    <div class="step">
                        <div class="step-number">2</div>
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
                        <div class="step-number">3</div>
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

    <script>
        // Add copy functionality to code blocks
        document.querySelectorAll('.code-block').forEach(block => {
            block.addEventListener('click', async () => {
                const code = block.textContent;
                try {
                    await navigator.clipboard.writeText(code);
                    const original = block.textContent;
                    block.textContent = '✅ Copied to clipboard!';
                    setTimeout(() => {
                        block.textContent = original;
                    }, 2000);
                } catch (err) {
                    console.error('Failed to copy text: ', err);
                }
            });
        });

        // Add smooth scrolling for anchor links
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                document.querySelector(this.getAttribute('href')).scrollIntoView({
                    behavior: 'smooth'
                });
            });
        });
    </script>
</body>
</html>
