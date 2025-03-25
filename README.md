# AssetTrackerAppSwift

A Swift console application that manages company assets like smartphones and computers across multiple offices. This project is a Swift adaptation of the original C# `AssetTrackerApp`, created to better understand cross-language logic and architecture.

## Features

- Seeded mock data for 10 assets
- Models: `Asset`, `Smartphone`, `Computer`, `Price`, `Currency`, `Office`
- Currency conversion (mocked ECB exchange rates)
- Sorting:
  - By purchase date
  - By office and then purchase date
- Simple console menu UI

## Folder Structure

```
AssetTrackerAppSwift/
├── Models/
├── Services/
├── Data/
├── ConsoleUI/
├── main.swift
├── Package.swift
└── README.md
```

## Technologies

- Swift 5+
- Swift Package Manager
- Command-line interface (CLI)
- Mock data and mocked ECB rates

## Getting Started

Clone the repo and build:

```bash
git clone https://github.com/your-username/AssetTrackerAppSwift.git
cd AssetTrackerAppSwift
swift build
swift run
```

## Motivation

This project was created to help understand and translate a C# console application to Swift, focusing on solid code structure, logic, and cross-platform learning.

## To Do

- Load real ECB XML exchange rates
- Add CSV/JSON export
- Add CLI filters (e.g. by office or currency)
```

---