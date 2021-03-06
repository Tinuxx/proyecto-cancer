﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.18444
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Cancer_frontend.Cancer_WS {
    using System.Runtime.Serialization;
    using System;
    
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="DrogaDTO", Namespace="http://schemas.datacontract.org/2004/07/cancer_backend")]
    [System.SerializableAttribute()]
    public partial class DrogaDTO : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string CasaComercialField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int IdField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string NombreField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private System.Nullable<float> PorcentajeTDCField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private System.Nullable<float> StockSolutionField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string StorageAndStabilityField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string CasaComercial {
            get {
                return this.CasaComercialField;
            }
            set {
                if ((object.ReferenceEquals(this.CasaComercialField, value) != true)) {
                    this.CasaComercialField = value;
                    this.RaisePropertyChanged("CasaComercial");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int Id {
            get {
                return this.IdField;
            }
            set {
                if ((this.IdField.Equals(value) != true)) {
                    this.IdField = value;
                    this.RaisePropertyChanged("Id");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Nombre {
            get {
                return this.NombreField;
            }
            set {
                if ((object.ReferenceEquals(this.NombreField, value) != true)) {
                    this.NombreField = value;
                    this.RaisePropertyChanged("Nombre");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public System.Nullable<float> PorcentajeTDC {
            get {
                return this.PorcentajeTDCField;
            }
            set {
                if ((this.PorcentajeTDCField.Equals(value) != true)) {
                    this.PorcentajeTDCField = value;
                    this.RaisePropertyChanged("PorcentajeTDC");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public System.Nullable<float> StockSolution {
            get {
                return this.StockSolutionField;
            }
            set {
                if ((this.StockSolutionField.Equals(value) != true)) {
                    this.StockSolutionField = value;
                    this.RaisePropertyChanged("StockSolution");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string StorageAndStability {
            get {
                return this.StorageAndStabilityField;
            }
            set {
                if ((object.ReferenceEquals(this.StorageAndStabilityField, value) != true)) {
                    this.StorageAndStabilityField = value;
                    this.RaisePropertyChanged("StorageAndStability");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="Cancer_WS.ICancer_ws")]
    public interface ICancer_ws {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ICancer_ws/obtenerTotalDrogas", ReplyAction="http://tempuri.org/ICancer_ws/obtenerTotalDrogasResponse")]
        int obtenerTotalDrogas();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ICancer_ws/obtenerTotalDrogas", ReplyAction="http://tempuri.org/ICancer_ws/obtenerTotalDrogasResponse")]
        System.Threading.Tasks.Task<int> obtenerTotalDrogasAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ICancer_ws/obtenerListaDrogas", ReplyAction="http://tempuri.org/ICancer_ws/obtenerListaDrogasResponse")]
        System.Collections.Generic.List<Cancer_frontend.Cancer_WS.DrogaDTO> obtenerListaDrogas();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ICancer_ws/obtenerListaDrogas", ReplyAction="http://tempuri.org/ICancer_ws/obtenerListaDrogasResponse")]
        System.Threading.Tasks.Task<System.Collections.Generic.List<Cancer_frontend.Cancer_WS.DrogaDTO>> obtenerListaDrogasAsync();
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface ICancer_wsChannel : Cancer_frontend.Cancer_WS.ICancer_ws, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class Cancer_wsClient : System.ServiceModel.ClientBase<Cancer_frontend.Cancer_WS.ICancer_ws>, Cancer_frontend.Cancer_WS.ICancer_ws {
        
        public Cancer_wsClient() {
        }
        
        public Cancer_wsClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public Cancer_wsClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public Cancer_wsClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public Cancer_wsClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public int obtenerTotalDrogas() {
            return base.Channel.obtenerTotalDrogas();
        }
        
        public System.Threading.Tasks.Task<int> obtenerTotalDrogasAsync() {
            return base.Channel.obtenerTotalDrogasAsync();
        }
        
        public System.Collections.Generic.List<Cancer_frontend.Cancer_WS.DrogaDTO> obtenerListaDrogas() {
            return base.Channel.obtenerListaDrogas();
        }
        
        public System.Threading.Tasks.Task<System.Collections.Generic.List<Cancer_frontend.Cancer_WS.DrogaDTO>> obtenerListaDrogasAsync() {
            return base.Channel.obtenerListaDrogasAsync();
        }
    }
}
