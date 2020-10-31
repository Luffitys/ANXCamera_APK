.class Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$2;
.super Ljava/lang/Object;
.source "MiShareDeviceAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->showCancelConfirm(Lcom/miui/mishare/app/model/MiShareDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

.field final synthetic val$device:Lcom/miui/mishare/app/model/MiShareDevice;


# direct methods
.method constructor <init>(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;Lcom/miui/mishare/app/model/MiShareDevice;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$2;->this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    iput-object p2, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$2;->val$device:Lcom/miui/mishare/app/model/MiShareDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$2;->this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    # getter for: Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mListener:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;
    invoke-static {v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->access$700(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$2;->this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    # getter for: Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mListener:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;
    invoke-static {v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->access$700(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$2;->val$device:Lcom/miui/mishare/app/model/MiShareDevice;

    invoke-interface {v0, v1}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;->onCancelTask(Lcom/miui/mishare/app/model/MiShareDevice;)V

    :cond_13
    return-void
.end method
