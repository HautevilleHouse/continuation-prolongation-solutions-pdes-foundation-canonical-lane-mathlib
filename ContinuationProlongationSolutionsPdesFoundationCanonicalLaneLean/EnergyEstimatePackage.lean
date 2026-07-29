import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean

structure EnergyEstimatePackage (α : Type u) where
  energyFunctional : Type v
  dissipationRate : Prop
  boundednessCondition : Prop
  energyEstimateClosed : Prop

def EnergyEstimatePackageClosed (E : EnergyEstimatePackage α) : Prop :=
  E.boundednessCondition ∧ E.energyEstimateClosed

theorem energy_estimate_package_closed (E : EnergyEstimatePackage α) (h : E.boundednessCondition) (h' : E.energyEstimateClosed) : EnergyEstimatePackageClosed E :=
  And.intro h h'

end ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean
end HautevilleHouse