% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make_1arm_trial_decision.R
\name{make_1arm_trial_decision}
\alias{make_1arm_trial_decision}
\title{Decision-making function for single arm binary endpoint trial with single interim analysis
based on Bayesian go no-go dual-criterion design per posteriors probability of success
given interim data}
\usage{
make_1arm_trial_decision(
  x,
  n,
  alpha_prior,
  beta_prior,
  N,
  cv1,
  cv2,
  sig_level,
  ppos_go,
  ppos_no_go,
  orr,
  n_final_iterations = 10000
)
}
\arguments{
\item{x}{interim number of responses}

\item{n}{interim sample size}

\item{alpha_prior}{shape parameter 1 of Beta prior}

\item{beta_prior}{shape parameter 2 of Beta prior}

\item{N}{final sample size}

\item{cv1}{benchmark for  criterion 1}

\item{cv2}{benchmark for  criterion 2}

\item{sig_level}{significance level for criterion 1}

\item{ppos_go}{cutoff for PPoS to early go at interim}

\item{ppos_no_go}{cutoff for PPoS to early no-go at interim}

\item{orr}{assumed overall response rate}

\item{n_final_iterations}{number of samples to draw from the posterior distribution}
}
\value{
A data frame with the following columns:
\describe{
\item{ppos_interim}{Posterior Predictive Probability of Success at interim.}
\item{interim_decision}{Decision at the interim analysis: "early go", "early no-go", or "continue".}
\item{final_decision}{Decision at the final stage: "early go", "early no-go", or "indeterminate".}
\item{total_sample_size}{The total sample size used in the trial.}
}
}
\description{
Decision-making function for single arm binary endpoint trial with single interim analysis
based on Bayesian go no-go dual-criterion design per posteriors probability of success
given interim data
}
\examples{
  x = 13; n = 16; alpha_prior = 1; beta_prior = 1;
            N = 26; cv1 = 0.4; cv2 = 0.6; sig_level = 0.95
            ppos_go = 0.90; ppos_no_go = 0.10; orr = 0.4;
            n_final_iterations = 10000
            make_1arm_trial_decision(x, n, alpha_prior, beta_prior,
                       N, cv1, cv2, sig_level,
                        ppos_go, ppos_no_go, orr,
                        n_final_iterations)
}
