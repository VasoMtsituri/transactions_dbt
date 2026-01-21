# transactions_dbt

## Project Description
This is a **dbt (data build tool)** project named `transactions_dbt`. It is designed to transform and model transaction data, specifically focusing on data from **BOG** (Bank of Georgia) and **TBC** banks.

## Summary
The project follows a standard dbt layered architecture with three main layers defined in `models/`:

*   **Staging (`models/staging`)**: Initial cleaning and preparation of raw data. Materialized as views.
*   **Intermediate (`models/intermediate`)**: Transformation logic and standardization. Materialized as views.
*   **Marts (`models/marts`)**: Final business logic and aggregations, likely for reporting. Materialized as tables.

## List of Sources
The project defines one main source in `models/staging/_src.yml`:
*   **Source Name**: `TRANSACTIONS_BQ`
*   **Database**: `project-6e4dc205-0d7d-44c6-975`
*   **Schema**: `transactions`
*   **Tables**:
    *   `bog`
    *   `tbc`

## Overview
The project ingests raw transaction data for BOG and TBC banks from a BigQuery database. It processes this data through a pipeline that:
1.  **Stages** the raw data (`bog_transactions_stg`, `tbc_transactions_stg`).
2.  **Transforms** it in the intermediate layer (`bog_transactions`, `tbc_transactions`).
3.  **Aggregates** it into daily summaries in the marts layer (`bog_transactions_daily`, `tbc_transactions_daily`).
