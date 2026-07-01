\# Retail Sales ELT Pipeline — dbt + DuckDB



\## Project Overview

An end-to-end ELT data pipeline built with \*\*dbt Core\*\* and \*\*DuckDB\*\* 

simulating a retail data warehouse with Bronze → Silver → Gold architecture.



\## Architecture


Raw CSV Data (Seeds)

↓

BRONZE Layer  →  Raw views (no transformation)

↓

SILVER Layer  →  Cleaned, enriched, joined data

↓

GOLD Layer   →  Business-ready aggregates \& KPIs


## Tech Stack

\- \*\*dbt Core\*\* — ELT transformation framework

\- \*\*DuckDB\*\* — In-process analytical database

\- \*\*Git/GitHub\*\* — Version control



\## Models

| Layer  | Model                    | Description                          |

|--------|--------------------------|--------------------------------------|

| Bronze | bronze\_sales             | Raw sales transactions               |

| Bronze | bronze\_customers         | Raw customer data                    |

| Bronze | bronze\_stores            | Raw store reference data             |

| Silver | silver\_sales             | Cleaned \& enriched sales fact table  |

| Gold   | gold\_sales\_by\_region     | Monthly revenue KPIs by region       |

| Gold   | gold\_sales\_by\_category   | Category performance summary         |

| Gold   | gold\_customer\_summary    | Customer lifetime value analysis     |



\## Data Quality Tests

\- Uniqueness checks on all primary keys

\- Not-null validation on critical fields

\- Accepted values tests on status fields



\## How to Run

```bash

pip install dbt-core dbt-duckdb

dbt seed      # Load raw data

dbt run       # Build all models

dbt test      # Run data quality tests

dbt docs serve  # View lineage documentation

```

