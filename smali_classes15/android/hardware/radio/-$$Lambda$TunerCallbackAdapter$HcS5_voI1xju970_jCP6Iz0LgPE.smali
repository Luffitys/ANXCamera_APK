.class public final synthetic Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$HcS5_voI1xju970_jCP6Iz0LgPE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/radio/TunerCallbackAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/radio/TunerCallbackAdapter;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$HcS5_voI1xju970_jCP6Iz0LgPE;->f$0:Landroid/hardware/radio/TunerCallbackAdapter;

    iput p2, p0, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$HcS5_voI1xju970_jCP6Iz0LgPE;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$HcS5_voI1xju970_jCP6Iz0LgPE;->f$0:Landroid/hardware/radio/TunerCallbackAdapter;

    iget v1, p0, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$HcS5_voI1xju970_jCP6Iz0LgPE;->f$1:I

    invoke-virtual {v0, v1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onTuneFailed$4$TunerCallbackAdapter(I)V

    return-void
.end method
