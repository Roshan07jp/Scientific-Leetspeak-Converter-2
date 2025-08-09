import '../domain/symbol.dart';

class AlphabetSymbolDataSource {
  static final List<Symbol> symbols = [
    // Physics A-Z
    Symbol(
        symbol: 'A',
        meaning: 'α (Alpha particle)',
        equation: '',
        usage:
            'Represents the first letter through the first type of radiation discovered. Alpha particles are helium nuclei, consisting of two protons and two neutrons, symbolizing the foundational nature of nuclear physics.',
        category: 'Physics'),
    Symbol(
        symbol: 'B',
        meaning: 'β (Beta particle)',
        equation: '',
        usage:
            'Following naturally from alpha, beta particles are high-energy electrons or positrons emitted during radioactive decay, representing the second major type of radiation.',
        category: 'Physics'),
    Symbol(
        symbol: 'C',
        meaning: 'c (Speed of light)',
        equation: '299,792,458 m/s',
        usage:
            'Perhaps the most famous physics constant, fundamental to Einstein\'s theories and our understanding of spacetime.',
        category: 'Physics'),
    Symbol(
        symbol: 'D',
        meaning: 'Δ (Delta)',
        equation: '',
        usage:
            'The mathematical symbol for change, essential in physics for expressing differences in position, time, energy, or any measurable quantity.',
        category: 'Physics'),
    Symbol(
        symbol: 'E',
        meaning: 'E=mc² (Mass-energy equivalence)',
        equation: 'E=mc²',
        usage:
            'Einstein\'s most famous equation, showing the relationship between mass and energy, revolutionizing our understanding of matter and energy.',
        category: 'Physics'),
    Symbol(
        symbol: 'F',
        meaning: 'F=ma (Newton\'s Second Law)',
        equation: 'F=ma',
        usage:
            'The fundamental relationship between force, mass, and acceleration, forming the cornerstone of classical mechanics.',
        category: 'Physics'),
    Symbol(
        symbol: 'G',
        meaning: 'G (Gravitational constant)',
        equation: '6.674 × 10⁻¹¹ m³/kg⋅s²',
        usage:
            'The universal gravitational constant that appears in Newton\'s law of universal gravitation.',
        category: 'Physics'),
    Symbol(
        symbol: 'H',
        meaning: 'ℏ (Reduced Planck constant)',
        equation: '',
        usage:
            'Planck\'s constant divided by 2π, fundamental to quantum mechanics and the uncertainty principle.',
        category: 'Physics'),
    Symbol(
        symbol: 'I',
        meaning: 'I (Current)',
        equation: '',
        usage:
            'Electric current measured in amperes, representing the flow of electric charge through a conductor.',
        category: 'Physics'),
    Symbol(
        symbol: 'J',
        meaning: 'J (Joule)',
        equation: '',
        usage:
            'The SI unit of energy, work, and heat, honoring physicist James Prescott Joule who studied the relationship between heat and mechanical work.',
        category: 'Physics'),
    Symbol(
        symbol: 'K',
        meaning: 'K (Kinetic energy)',
        equation: 'KE = ½mv²',
        usage: 'The energy of motion possessed by moving objects.',
        category: 'Physics'),
    Symbol(
        symbol: 'L',
        meaning: 'L (Angular momentum)',
        equation: '',
        usage:
            'A vector quantity representing the rotational momentum of an object, crucial in understanding spinning systems.',
        category: 'Physics'),
    Symbol(
        symbol: 'M',
        meaning: 'μ (Mu/Magnetic permeability)',
        equation: '',
        usage:
            'The measure of how much magnetization a material obtains in response to an applied magnetic field.',
        category: 'Physics'),
    Symbol(
        symbol: 'N',
        meaning: 'N (Newton)',
        equation: '',
        usage:
            'The SI unit of force, honoring Sir Isaac Newton, defined as the force needed to accelerate one kilogram at one meter per second squared.',
        category: 'Physics'),
    Symbol(
        symbol: 'O',
        meaning: 'Ω (Omega/Resistance)',
        equation: '',
        usage:
            'The symbol for electrical resistance measured in ohms, representing opposition to electric current flow.',
        category: 'Physics'),
    Symbol(
        symbol: 'P',
        meaning: 'P=VI (Power equation)',
        equation: 'P=VI',
        usage:
            'Electrical power equals voltage times current, fundamental to understanding energy consumption and generation.',
        category: 'Physics'),
    Symbol(
        symbol: 'Q',
        meaning: 'Q (Electric charge)',
        equation: '',
        usage:
            'The fundamental property of matter that causes electromagnetic interactions, measured in coulombs.',
        category: 'Physics'),
    Symbol(
        symbol: 'R',
        meaning: 'R=V/I (Ohm\'s Law)',
        equation: 'R=V/I',
        usage:
            'The relationship between voltage, current, and resistance, fundamental to electrical circuit analysis.',
        category: 'Physics'),
    Symbol(
        symbol: 'S',
        meaning: 'σ (Sigma/Stefan-Boltzmann constant)',
        equation: '',
        usage:
            'Used in the Stefan-Boltzmann law describing blackbody radiation from heated objects.',
        category: 'Physics'),
    Symbol(
        symbol: 'T',
        meaning: 'T (Temperature)',
        equation: '',
        usage:
            'Measured in Kelvin in physics, representing the average kinetic energy of particles in a system.',
        category: 'Physics'),
    Symbol(
        symbol: 'U',
        meaning: 'U (Potential energy)',
        equation: '',
        usage:
            'The stored energy in a system due to position or configuration, complementing kinetic energy.',
        category: 'Physics'),
    Symbol(
        symbol: 'V',
        meaning: 'V (Voltage)',
        equation: '',
        usage:
            'Electric potential difference measured in volts, representing the "pressure" that pushes electric charges through circuits.',
        category: 'Physics'),
    Symbol(
        symbol: 'W',
        meaning: 'W=Fd (Work)',
        equation: 'W=Fd',
        usage:
            'Work equals force times distance, representing energy transfer when a force moves an object through a distance.',
        category: 'Physics'),
    Symbol(
        symbol: 'X',
        meaning: 'χ (Chi/Susceptibility)',
        equation: '',
        usage:
            'Magnetic or electric susceptibility, measuring how much a material becomes magnetized or polarized in external fields.',
        category: 'Physics'),
    Symbol(
        symbol: 'Y',
        meaning: 'Y (Young\'s modulus)',
        equation: '',
        usage:
            'A measure of material stiffness, describing the relationship between stress and strain in elastic materials.',
        category: 'Physics'),
    Symbol(
        symbol: 'Z',
        meaning: 'Z (Impedance)',
        equation: '',
        usage:
            'The total opposition to alternating current flow in electrical circuits, combining resistance and reactance.',
        category: 'Physics'),

    // Quantum Physics A-Z
    Symbol(
        symbol: 'A',
        meaning: '|α⟩ (Alpha state)',
        equation: '',
        usage:
            'Quantum state notation representing a specific quantum configuration, fundamental to quantum mechanics formalism.',
        category: 'Quantum'),
    Symbol(
        symbol: 'B',
        meaning: 'B (Magnetic field)',
        equation: '',
        usage:
            'In quantum contexts, magnetic fields cause energy level splitting and affect particle spin orientations.',
        category: 'Quantum'),
    Symbol(
        symbol: 'C',
        meaning: 'Ĉ (Creation operator)',
        equation: '',
        usage:
            'Quantum field theory operator that creates particles, fundamental to understanding particle physics.',
        category: 'Quantum'),
    Symbol(
        symbol: 'D',
        meaning: 'D̂ (Destruction/Annihilation operator)',
        equation: '',
        usage:
            'Partner to creation operator, destroys particles in quantum field theory calculations.',
        category: 'Quantum'),
    Symbol(
        symbol: 'E',
        meaning: 'Ê (Energy operator/Hamiltonian)',
        equation: '',
        usage:
            'The quantum mechanical operator corresponding to total energy of a system.',
        category: 'Quantum'),
    Symbol(
        symbol: 'F',
        meaning: 'F̂ (Fock state)',
        equation: '',
        usage:
            'Quantum states with definite particle numbers, essential in quantum field theory and quantum optics.',
        category: 'Quantum'),
    Symbol(
        symbol: 'G',
        meaning: 'ĝ (Pauli matrices)',
        equation: '',
        usage:
            'Set of three 2×2 complex matrices fundamental to describing spin-½ particles like electrons.',
        category: 'Quantum'),
    Symbol(
        symbol: 'H',
        meaning: 'Ĥ (Hamiltonian operator)',
        equation: '',
        usage:
            'The quantum mechanical operator representing total energy, central to the Schrödinger equation.',
        category: 'Quantum'),
    Symbol(
        symbol: 'I',
        meaning: 'Î (Identity operator)',
        equation: '',
        usage:
            'The quantum operator that leaves states unchanged, fundamental to quantum mechanics mathematics.',
        category: 'Quantum'),
    Symbol(
        symbol: 'J',
        meaning: 'Ĵ (Angular momentum operator)',
        equation: '',
        usage:
            'Quantum mechanical representation of rotational motion and particle spin.',
        category: 'Quantum'),
    Symbol(
        symbol: 'K',
        meaning: 'K̂ (Kinetic energy operator)',
        equation: '',
        usage:
            'Quantum operator for kinetic energy, typically involving momentum operators and mass.',
        category: 'Quantum'),
    Symbol(
        symbol: 'L',
        meaning: 'L̂ (Orbital angular momentum)',
        equation: '',
        usage:
            'Quantum operator describing orbital motion of particles around nuclei or other centers.',
        category: 'Quantum'),
    Symbol(
        symbol: 'M',
        meaning: 'm_s (Spin quantum number)',
        equation: '',
        usage:
            'Quantum number describing the z-component of particle spin, typically ±½ for electrons.',
        category: 'Quantum'),
    Symbol(
        symbol: 'N',
        meaning: 'N̂ (Number operator)',
        equation: '',
        usage:
            'Counts the number of particles in a given quantum state, essential in many-body quantum systems.',
        category: 'Quantum'),
    Symbol(
        symbol: 'O',
        meaning: 'Ô (Observable operator)',
        equation: '',
        usage:
            'Any quantum mechanical operator corresponding to measurable physical quantities.',
        category: 'Quantum'),
    Symbol(
        symbol: 'P',
        meaning: 'P̂ (Momentum operator)',
        equation: '',
        usage:
            'Quantum operator for momentum, related to spatial derivatives in position representation.',
        category: 'Quantum'),
    Symbol(
        symbol: 'Q',
        meaning: 'Q̂ (Position operator)',
        equation: '',
        usage:
            'Quantum operator representing particle position, complementary to momentum through uncertainty principle.',
        category: 'Quantum'),
    Symbol(
        symbol: 'R',
        meaning: 'R̂ (Rotation operator)',
        equation: '',
        usage:
            'Quantum operator describing rotations in space, fundamental to understanding symmetries.',
        category: 'Quantum'),
    Symbol(
        symbol: 'S',
        meaning: 'Ŝ (Spin operator)',
        equation: '',
        usage:
            'Quantum operator describing intrinsic angular momentum of particles like electrons and photons.',
        category: 'Quantum'),
    Symbol(
        symbol: 'T',
        meaning: 'T̂ (Time evolution operator)',
        equation: '',
        usage:
            'Describes how quantum states change over time according to Schrödinger equation.',
        category: 'Quantum'),
    Symbol(
        symbol: 'U',
        meaning: 'Û (Unitary operator)',
        equation: '',
        usage:
            'Quantum operators that preserve probability, essential for describing quantum evolution.',
        category: 'Quantum'),
    Symbol(
        symbol: 'V',
        meaning: 'V̂ (Potential energy operator)',
        equation: '',
        usage:
            'Quantum operator for potential energy, depends on particle positions and external fields.',
        category: 'Quantum'),
    Symbol(
        symbol: 'W',
        meaning: 'W (Wavefunction collapse)',
        equation: '',
        usage:
            'The controversial process by which quantum superpositions become definite measurement outcomes.',
        category: 'Quantum'),
    Symbol(
        symbol: 'X',
        meaning: 'X̂ (Pauli X matrix)',
        equation: '',
        usage:
            'One of the Pauli matrices, represents spin flips and is fundamental to quantum computing.',
        category: 'Quantum'),
    Symbol(
        symbol: 'Y',
        meaning: 'Ŷ (Pauli Y matrix)',
        equation: '',
        usage:
            'Another Pauli matrix involving complex numbers, essential for describing quantum spin states.',
        category: 'Quantum'),
    Symbol(
        symbol: 'Z',
        meaning: 'Ẑ (Pauli Z matrix)',
        equation: '',
        usage:
            'The third Pauli matrix, often used to measure spin along the z-axis in quantum experiments.',
        category: 'Quantum'),

    // Biology A-Z
    Symbol(
        symbol: 'A',
        meaning: 'ATP (Adenosine Triphosphate)',
        equation: '',
        usage:
            'The universal energy currency of life, powering virtually every cellular process from muscle contraction to protein synthesis.',
        category: 'Biology'),
    Symbol(
        symbol: 'B',
        meaning: 'bp (Base pairs)',
        equation: '',
        usage:
            'The complementary nucleotide pairs (A-T, G-C) that form the rungs of the DNA double helix ladder.',
        category: 'Biology'),
    Symbol(
        symbol: 'C',
        meaning: 'CO₂ (Carbon dioxide)',
        equation: '',
        usage:
            'Central to photosynthesis and cellular respiration, the gas that plants consume and animals exhale.',
        category: 'Biology'),
    Symbol(
        symbol: 'D',
        meaning: 'DNA (Deoxyribonucleic acid)',
        equation: '',
        usage:
            'The molecule of heredity, containing genetic instructions for developing and maintaining life.',
        category: 'Biology'),
    Symbol(
        symbol: 'E',
        meaning: 'Enzyme (Protein catalysts)',
        equation: '',
        usage:
            'Biological molecules that speed up chemical reactions, making life\'s chemistry possible at body temperature.',
        category: 'Biology'),
    Symbol(
        symbol: 'F',
        meaning: 'FAD (Flavin adenine dinucleotide)',
        equation: '',
        usage:
            'An electron carrier crucial in cellular respiration, helping extract energy from food molecules.',
        category: 'Biology'),
    Symbol(
        symbol: 'G',
        meaning: 'GTP (Guanosine triphosphate)',
        equation: '',
        usage:
            'Energy-carrying molecule similar to ATP, important in protein synthesis and cell signaling.',
        category: 'Biology'),
    Symbol(
        symbol: 'H',
        meaning: 'H₂O (Water)',
        equation: '',
        usage:
            'The universal solvent of life, comprising about 60% of human body weight and enabling all biochemical reactions.',
        category: 'Biology'),
    Symbol(
        symbol: 'I',
        meaning: 'Insulin (Hormone)',
        equation: '',
        usage:
            'The peptide hormone regulating blood glucose levels, essential for cellular energy metabolism.',
        category: 'Biology'),
    Symbol(
        symbol: 'J',
        meaning: 'Joule (Energy unit in metabolism)',
        equation: '',
        usage:
            'Though from physics, used in biology to measure metabolic energy and caloric content.',
        category: 'Biology'),
    Symbol(
        symbol: 'K',
        meaning: 'K⁺ (Potassium ion)',
        equation: '',
        usage:
            'Essential for nerve impulse transmission and maintaining cellular electrical gradients.',
        category: 'Biology'),
    Symbol(
        symbol: 'L',
        meaning: 'Lipid (Fat molecules)',
        equation: '',
        usage:
            'Essential biological molecules forming cell membranes and serving as energy storage compounds.',
        category: 'Biology'),
    Symbol(
        symbol: 'M',
        meaning: 'mRNA (Messenger RNA)',
        equation: '',
        usage:
            'The molecular messenger carrying genetic information from DNA to protein-making ribosomes.',
        category: 'Biology'),
    Symbol(
        symbol: 'N',
        meaning: 'NAD⁺ (Nicotinamide adenine dinucleotide)',
        equation: '',
        usage:
            'Crucial electron carrier in cellular respiration, helping extract energy from nutrients.',
        category: 'Biology'),
    Symbol(
        symbol: 'O',
        meaning: 'O₂ (Oxygen)',
        equation: '',
        usage:
            'Essential for aerobic respiration, the gas that most organisms need to extract energy from food efficiently.',
        category: 'Biology'),
    Symbol(
        symbol: 'P',
        meaning: 'Protein (Polypeptide chains)',
        equation: '',
        usage:
            'The workhorses of cells, performing structural, enzymatic, and regulatory functions throughout organisms.',
        category: 'Biology'),
    Symbol(
        symbol: 'Q',
        meaning: 'Quinone (Electron carriers)',
        equation: '',
        usage:
            'Organic compounds that transport electrons in photosynthesis and cellular respiration pathways.',
        category: 'Biology'),
    Symbol(
        symbol: 'R',
        meaning: 'RNA (Ribonucleic acid)',
        equation: '',
        usage:
            'Versatile molecules involved in protein synthesis, gene regulation, and potentially the origin of life.',
        category: 'Biology'),
    Symbol(
        symbol: 'S',
        meaning: 'Substrate (Reactant molecules)',
        equation: '',
        usage:
            'The specific molecules that enzymes act upon, fitting into enzyme active sites like keys into locks.',
        category: 'Biology'),
    Symbol(
        symbol: 'T',
        meaning: 'tRNA (Transfer RNA)',
        equation: '',
        usage:
            'The adapter molecules that bring amino acids to ribosomes during protein synthesis.',
        category: 'Biology'),
    Symbol(
        symbol: 'U',
        meaning: 'Uracil (RNA base)',
        equation: '',
        usage: 'One of the four nucleotide bases in RNA, replacing thymine from DNA.',
        category: 'Biology'),
    Symbol(
        symbol: 'V',
        meaning: 'Virus (Genetic parasites)',
        equation: '',
        usage:
            'Infectious agents requiring host cells for reproduction, blurring the line between living and non-living.',
        category: 'Biology'),
    Symbol(
        symbol: 'W',
        meaning: 'Water potential (Ψw)',
        equation: '',
        usage:
            'The measure of water\'s potential energy in biological systems, driving water movement in plants.',
        category: 'Biology'),
    Symbol(
        symbol: 'X',
        meaning: 'X-chromosome (Sex chromosome)',
        equation: '',
        usage:
            'One of the sex chromosomes, with females typically having two X chromosomes.',
        category: 'Biology'),
    Symbol(
        symbol: 'Y',
        meaning: 'Y-chromosome (Male sex chromosome)',
        equation: '',
        usage:
            'The chromosome that typically determines male sex in mammals, much smaller than the X chromosome.',
        category: 'Biology'),
    Symbol(
        symbol: 'Z',
        meaning: 'Zygote (Fertilized egg)',
        equation: '',
        usage:
            'The single cell formed when sperm and egg unite, containing the complete genetic blueprint for a new organism.',
        category: 'Biology'),

    // Chemistry A-Z
    Symbol(
        symbol: 'A',
        meaning: 'Avogadro\'s number (6.022 × 10²³)',
        equation: '6.022 × 10²³',
        usage:
            'The number of particles in one mole of substance, connecting atomic scale to macroscopic measurements.',
        category: 'Chemistry'),
    Symbol(
        symbol: 'B',
        meaning: 'Bohr model (Atomic structure)',
        equation: '',
        usage:
            'Early model of atomic structure with electrons orbiting nucleus in defined energy levels.',
        category: 'Chemistry'),
    Symbol(
        symbol: 'C',
        meaning: 'Catalyst (Reaction accelerator)',
        equation: '',
        usage:
            'Substances that speed up chemical reactions without being consumed, lowering activation energy barriers.',
        category: 'Chemistry'),
    Symbol(
        symbol: 'D',
        meaning: 'Dalton (Atomic mass unit)',
        equation: '',
        usage:
            'Unit for expressing atomic and molecular masses, approximately equal to one proton or neutron mass.',
        category: 'Chemistry'),
    Symbol(
        symbol: 'E',
        meaning: 'Electronegativity (Electron affinity)',
        equation: '',
        usage:
            'The tendency of atoms to attract electrons in chemical bonds, determining bond polarity.',
        category: 'Chemistry'),
    Symbol(
        symbol: 'F',
        meaning: 'Fluorine (F)',
        equation: '',
        usage:
            'The most electronegative element, forming the strongest single bonds with other elements.',
        category: 'Chemistry'),
    Symbol(
        symbol: 'G',
        meaning: 'Graham\'s law (Gas diffusion)',
        equation: '',
        usage:
            'Describes how gas diffusion rates relate inversely to the square root of their molecular masses.',
        category: 'Chemistry'),
    Symbol(
        symbol: 'H',
        meaning: 'Hydrogen bond (Intermolecular force)',
        equation: '',
        usage:
            'Special dipole-dipole attraction involving hydrogen and highly electronegative atoms like oxygen or nitrogen.',
        category: 'Chemistry'),
    Symbol(
        symbol: 'I',
        meaning: 'Ionic bond (Electrostatic attraction)',
        equation: '',
        usage:
            'Chemical bond formed by complete electron transfer between atoms, creating charged ions.',
        category: 'Chemistry'),
    Symbol(
        symbol: 'J',
        meaning: 'Joule per mole (Energy unit)',
        equation: '',
        usage:
            'Energy measurement commonly used in chemistry for reaction enthalpies and activation energies.',
        category: 'Chemistry'),
    Symbol(
        symbol: 'K',
        meaning: 'Kinetic molecular theory (Gas behavior)',
        equation: '',
        usage:
            'Theory explaining gas behavior through particle motion, relating temperature to average kinetic energy.',
        category: 'Chemistry'),
    Symbol(
        symbol: 'L',
        meaning: 'Lewis structure (Bonding diagram)',
        equation: '',
        usage:
            'Diagrams showing how electrons are distributed in molecules, predicting molecular shapes and properties.',
        category: 'Chemistry'),
    Symbol(
        symbol: 'M',
        meaning: 'Molarity (Concentration unit)',
        equation: '',
        usage:
            'Moles of solute per liter of solution, the most common concentration measurement in chemistry.',
        category: 'Chemistry'),
    Symbol(
        symbol: 'N',
        meaning: 'Nitrogen (N₂)',
        equation: '',
        usage:
            'The most abundant atmospheric gas, essential for protein synthesis and forming very strong triple bonds.',
        category: 'Chemistry'),
    Symbol(
        symbol: 'O',
        meaning: 'Oxidation (Electron loss)',
        equation: '',
        usage:
            'Chemical process involving electron loss, often accompanied by oxygen gain or hydrogen loss.',
        category: 'Chemistry'),
    Symbol(
        symbol: 'P',
        meaning: 'pH (Acidity scale)',
        equation: '',
        usage:
            'Logarithmic scale measuring hydrogen ion concentration, ranging from 0 (very acidic) to 14 (very basic).',
        category: 'Chemistry'),
    Symbol(
        symbol: 'Q',
        meaning: 'Quantum number (Electron properties)',
        equation: '',
        usage:
            'Set of numbers describing electron properties in atoms: principal, angular momentum, magnetic, and spin.',
        category: 'Chemistry'),
    Symbol(
        symbol: 'R',
        meaning: 'Reduction (Electron gain)',
        equation: '',
        usage:
            'Chemical process involving electron gain, complementary to oxidation in redox reactions.',
        category: 'Chemistry'),
    Symbol(
        symbol: 'S',
        meaning: 'Stoichiometry (Quantitative relationships)',
        equation: '',
        usage:
            'The calculation of quantities in chemical reactions based on balanced chemical equations.',
        category: 'Chemistry'),
    Symbol(
        symbol: 'T',
        meaning: 'Thermodynamics (Energy changes)',
        equation: '',
        usage:
            'Study of energy changes in chemical reactions, determining whether reactions occur spontaneously.',
        category: 'Chemistry'),
    Symbol(
        symbol: 'U',
        meaning: 'Universal gas constant (R = 8.314 J/mol·K)',
        equation: 'R = 8.314 J/mol·K',
        usage:
            'Fundamental constant relating pressure, volume, temperature, and amount of gas.',
        category: 'Chemistry'),
    Symbol(
        symbol: 'V',
        meaning: 'Valence electrons (Outer shell electrons)',
        equation: '',
        usage:
            'Electrons in the outermost shell determining chemical bonding behavior and reactivity.',
        category: 'Chemistry'),
    Symbol(
        symbol: 'W',
        meaning: 'Water (H₂O)',
        equation: '',
        usage:
            'Universal solvent with unique properties due to hydrogen bonding, essential for all known life.',
        category: 'Chemistry'),
    Symbol(
        symbol: 'X',
        meaning: 'X-ray crystallography (Structure determination)',
        equation: '',
        usage:
            'Technique using X-ray diffraction to determine three-dimensional molecular structures.',
        category: 'Chemistry'),
    Symbol(
        symbol: 'Y',
        meaning: 'Yield (Reaction efficiency)',
        equation: '',
        usage:
            'The percentage of theoretical product actually obtained in chemical reactions, affected by side reactions and losses.',
        category: 'Chemistry'),
    Symbol(
        symbol: 'Z',
        meaning: 'Zero-order reaction (Reaction kinetics)',
        equation: '',
        usage:
            'Chemical reaction whose rate is independent of reactant concentration, often involving surface catalysis.',
        category: 'Chemistry'),

    // Mathematics A-Z
    Symbol(
        symbol: 'A',
        meaning: 'Algorithm (Step-by-step procedure)',
        equation: '',
        usage:
            'Systematic methods for solving problems, fundamental to computational mathematics and computer science.',
        category: 'Math'),
    Symbol(
        symbol: 'B',
        meaning: 'Binomial theorem (Algebraic expansion)',
        equation: '(a+b)ⁿ',
        usage:
            'Formula for expanding expressions of the form (a+b)ⁿ, crucial in probability and combinatorics.',
        category: 'Math'),
    Symbol(
        symbol: 'C',
        meaning: 'Calculus (Rate of change)',
        equation: '',
        usage:
            'Mathematical study of continuous change, providing tools for optimization, area calculation, and rate analysis.',
        category: 'Math'),
    Symbol(
        symbol: 'D',
        meaning: 'Derivative (Rate of change)',
        equation: '',
        usage:
            'Measures how functions change instantaneously, fundamental to optimization and physics applications.',
        category: 'Math'),
    Symbol(
        symbol: 'E',
        meaning: 'e (Euler\'s number ≈ 2.718)',
        equation: '≈ 2.718',
        usage:
            'Mathematical constant appearing in exponential growth, compound interest, and natural logarithms.',
        category: 'Math'),
    Symbol(
        symbol: 'F',
        meaning: 'Function (Input-output relationship)',
        equation: '',
        usage:
            'Mathematical relationship assigning each input exactly one output, fundamental to mathematical modeling.',
        category: 'Math'),
    Symbol(
        symbol: 'G',
        meaning: 'Graph theory (Network mathematics)',
        equation: '',
        usage:
            'Study of networks consisting of vertices connected by edges, applicable to social networks and computer systems.',
        category: 'Math'),
    Symbol(
        symbol: 'H',
        meaning: 'Hypothesis testing (Statistical inference)',
        equation: '',
        usage:
            'Method for making decisions about population parameters based on sample data and probability.',
        category: 'Math'),
    Symbol(
        symbol: 'I',
        meaning: 'Integral (Accumulation)',
        equation: '',
        usage:
            'Mathematical operation finding areas under curves and solving differential equations, complementary to derivatives.',
        category: 'Math'),
    Symbol(
        symbol: 'J',
        meaning: 'Jacobian (Multivariable calculus)',
        equation: '',
        usage:
            'Matrix of partial derivatives describing how multivariable functions change, crucial in coordinate transformations.',
        category: 'Math'),
    Symbol(
        symbol: 'K',
        meaning: 'k (Constant of proportionality)',
        equation: '',
        usage:
            'Parameter relating proportional quantities, appearing in direct and inverse variation relationships.',
        category: 'Math'),
    Symbol(
        symbol: 'L',
        meaning: 'Limit (Approaching behavior)',
        equation: '',
        usage:
            'Fundamental concept describing function behavior as inputs approach specific values, foundation of calculus.',
        category: 'Math'),
    Symbol(
        symbol: 'M',
        meaning: 'Matrix (Rectangular array)',
        equation: '',
        usage:
            'Ordered arrangements of numbers useful for solving systems of equations and representing linear transformations.',
        category: 'Math'),
    Symbol(
        symbol: 'N',
        meaning: 'n! (Factorial)',
        equation: '',
        usage:
            'Product of all positive integers up to n, crucial in permutations, combinations, and probability calculations.',
        category: 'Math'),
    Symbol(
        symbol: 'O',
        meaning: 'O(n) (Big O notation)',
        equation: '',
        usage:
            'Mathematical notation describing algorithm efficiency and function growth rates in computer science.',
        category: 'Math'),
    Symbol(
        symbol: 'P',
        meaning: 'π (Pi ≈ 3.14159)',
        equation: '≈ 3.14159',
        usage:
            'Ratio of circle circumference to diameter, appearing in geometry, trigonometry, and many unexpected mathematical contexts.',
        category: 'Math'),
    Symbol(
        symbol: 'Q',
        meaning: 'Q (Rational numbers)',
        equation: '',
        usage:
            'Set of all numbers expressible as fractions of integers, dense within the real number system.',
        category: 'Math'),
    Symbol(
        symbol: 'R',
        meaning: 'R (Real numbers)',
        equation: '',
        usage:
            'Complete set of numbers including all rational and irrational numbers, forming the continuum of the number line.',
        category: 'Math'),
    Symbol(
        symbol: 'S',
        meaning: 'Statistics (Data analysis)',
        equation: '',
        usage:
            'Mathematical methods for collecting, analyzing, and interpreting data to make informed decisions.',
        category: 'Math'),
    Symbol(
        symbol: 'T',
        meaning: 'Topology (Shape properties)',
        equation: '',
        usage:
            'Study of geometric properties preserved under continuous deformations, important in advanced mathematics and physics.',
        category: 'Math'),
    Symbol(
        symbol: 'U',
        meaning: 'Union (Set combination)',
        equation: '',
        usage:
            'Set operation combining all elements from multiple sets, fundamental to set theory and probability.',
        category: 'Math'),
    Symbol(
        symbol: 'V',
        meaning: 'Vector (Magnitude and direction)',
        equation: '',
        usage:
            'Mathematical object with both size and direction, essential in physics, engineering, and computer graphics.',
        category: 'Math'),
    Symbol(
        symbol: 'W',
        meaning: 'Wave equation (Partial differential equation)',
        equation: '',
        usage:
            'Mathematical description of wave propagation, fundamental to physics and engineering applications.',
        category: 'Math'),
    Symbol(
        symbol: 'X',
        meaning: 'x (Independent variable)',
        equation: '',
        usage:
            'Traditional symbol for input values in functions and equations, representing unknown quantities to be solved.',
        category: 'Math'),
    Symbol(
        symbol: 'Y',
        meaning: 'y (Dependent variable)',
        equation: '',
        usage:
            'Traditional symbol for output values in functions, representing quantities that depend on other variables.',
        category: 'Math'),
    Symbol(
        symbol: 'Z',
        meaning: 'ℤ (Integer set)',
        equation: '',
        usage:
            'Set of all whole numbers including positive, negative, and zero, fundamental buil',
        category: 'Math'),
  ];
}