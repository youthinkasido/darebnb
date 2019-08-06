import { connect } from 'react-redux';
import { fetchAllSpots } from '../../actions/spot_actions'
import { selectAllSpots } from '../../reducers/selectors';
import SpotsIndex from './spot_index'

const mapStateToProps = (state) =>{

    return ({
 spots: selectAllSpots(state),
//  spot: selectSpot(state.entities,spotId),
//  reviews: selectReviewsForSpot(state.entites, spot)
        // gets spots back in an array format
})}

const mapDispatchToProps = (dispatch) => {
  
    return ({
    fetchAllSpots: () => dispatch(fetchAllSpots())
})}

export default connect(mapStateToProps,mapDispatchToProps)(SpotsIndex)