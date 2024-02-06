void align_wp(hls::stream<char_t, MAX_QUERY_LENGTH> &query_stream,
			  hls::stream<char_t, MAX_REFERENCE_LENGTH> &reference_stream,
			  hls::stream<hls::vector<type_t, N_LAYERS>, MAX_QUERY_LENGTH> &init_qry_scr,
			  hls::stream<hls::vector<type_t, N_LAYERS>, MAX_REFERENCE_LENGTH> &init_ref_scr,
			  // int query_length, int reference_length,
			  hls::stream<tbp_t, MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH> &traceback_out);

namespace Align {

}