-- +goose Up
CREATE TYPE expression_status AS ENUM ('ready for computation', 'computing', 'result', 'terminated');

CREATE TABLE expressions (
    id UUID PRIMARY KEY,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    data TEXT NOT NULL,
    status expression_status NOT NULL
);


-- +goose Down
DROP TABLE expressions;
DROP TYPE expression_status;