# System Resource Monitor

A lightweight bash script that monitors system resources on Linux systems and sends email alerts when resource usage exceeds defined thresholds.

## Overview

This project provides a simple yet effective solution for monitoring critical system resources on Linux machines. The script checks system load averages and automatically sends email notifications to system administrators when predefined thresholds are exceeded, helping to prevent system failures and performance issues before they impact users.

## Features

- **System Load Monitoring**: Tracks CPU load averages
- **Configurable Thresholds**: Easily adjust alert thresholds based on your system's capabilities
- **Email Notifications**: Automatic alerts sent when thresholds are crossed
- **Low Overhead**: Minimal impact on system resources
- **Easy to Deploy**: Simple setup process for any Linux environment

## How It Works

The script:
1. Checks the current system load average from `/proc/loadavg`
2. Compares it against a predefined threshold
3. If the threshold is exceeded, it collects system performance data using `sar`
4. Sends an email alert with the performance data to the specified administrator

## Usage

### Prerequisites
- Linux operating system
- `sar` command (part of the sysstat package)
- Mail server configured or access to an SMTP service

### Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/system-resource-monitor.git
   cd system-resource-monitor
   ```

2. Make the script executable:
   ```bash
   chmod +x monitor.sh
   ```

3. Configure the threshold and email address in the script:
   ```bash
   # Open the file in your favorite editor
   nano monitor.sh
   
   # Modify the trigger value and email address as needed
   ```

4. Set up a cron job to run the script at regular intervals:
   ```bash
   # Example: Run every 5 minutes
   crontab -e
   */5 * * * * /path/to/monitor.sh
   ```

## Configuration Options

The script can be customized by modifying the following variables:

- `trigger`: The load average threshold that will trigger an alert (default: 1.00)
- Email address: Change the email address to your administrator's address

## Example Alert

When the system load exceeds the threshold, you'll receive an email with the subject:

```
High load on server - [ current_load ]
```

The email body will contain the output of the `sar -q` command, showing detailed queue and load average statistics.

## Tech Stack

- Bash scripting
- Linux system utilities (sar, mail)
- Cron (for scheduling)

## Future Improvements

- Add monitoring for additional resources (memory, disk usage, network)
- Support for multiple notification methods (Slack, SMS, etc.)
- Configurable alert levels (warning, critical, etc.)
- Web dashboard for monitoring and configuration

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Author

Developed by ![Poorvith Gowda](https://www.linkedin.com/in/poorvith-gowda/)

---

For questions or feedback, please contact: poorvithgowda10@gmail.com