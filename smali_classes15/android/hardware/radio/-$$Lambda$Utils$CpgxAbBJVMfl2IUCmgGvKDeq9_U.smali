.class public final synthetic Landroid/hardware/radio/-$$Lambda$Utils$CpgxAbBJVMfl2IUCmgGvKDeq9_U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/os/Parcel;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/-$$Lambda$Utils$CpgxAbBJVMfl2IUCmgGvKDeq9_U;->f$0:Landroid/os/Parcel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/radio/-$$Lambda$Utils$CpgxAbBJVMfl2IUCmgGvKDeq9_U;->f$0:Landroid/os/Parcel;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Landroid/hardware/radio/Utils;->lambda$writeIntSet$1(Landroid/os/Parcel;Ljava/lang/Integer;)V

    return-void
.end method
