library(DiagrammeR)

#png(filename = "lime-flow.png", width = 12, height = 7.5,  units = "in", res=240 ,type = "quartz")
grViz("
      digraph {
      
      # graph attributes
      graph [overlap = true, fontsize = 12]
      
      # node attributes
      node [shape = box,
      fontname = Helvetica,
      color = blue]
      
      # edge attributes
      edge [color = gray]
      
      # node statements
      train_data; test_data; algorithm;'function(f)';lime_dist_gen,'sample_row(x)'; 'pert_data(z)','pert_data_scored(z)';'linear(g(z))'
      'argmin(f(z)-g(z)' [color = black]
      
      # node attributes
      node [shape = circle,
      fixedsize = true,
width=1.3]
      
      # node statements
      visual_output

       node [shape = oval,
       fixedsize = true,
       width = 1.5,
       color = grey]

      n_permutation, n_bins, n_labels, n_features, feat_select
      
      # edge statements
      train_data->algorithm         // gray
      algorithm->'function(f)'
      train_data->lime_dist_gen
      test_data->'sample_row(x)' [color = lime]
      'sample_row(x)'->lime_dist_gen->'pert_data(z)' [color = lime]
       n_permutation->lime_dist_gen
       n_bins->lime_dist_gen
      'pert_data(z)'->'function(f)'->'pert_data_scored(z)' [color = lime]
      'pert_data_scored(z)'->'linear(g(z))' [color = blue]
       n_labels->'argmin(f(z)-g(z)'
       n_features->'argmin(f(z)-g(z)'
      feat_select->'argmin(f(z)-g(z)'
      'linear(g(z))'->'argmin(f(z)-g(z)' [color= blue]
      'pert_data_scored(z)'->'argmin(f(z)-g(z)' 
      'argmin(f(z)-g(z)'-> visual_output [color = red]
      }
      ")