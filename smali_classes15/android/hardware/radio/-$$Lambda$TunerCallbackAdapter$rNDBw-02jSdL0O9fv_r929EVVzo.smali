.class public final synthetic Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$rNDBw-02jSdL0O9fv_r929EVVzo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/radio/TunerCallbackAdapter;

.field public final synthetic f$1:Landroid/hardware/radio/ProgramList$Chunk;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/ProgramList$Chunk;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$rNDBw-02jSdL0O9fv_r929EVVzo;->f$0:Landroid/hardware/radio/TunerCallbackAdapter;

    iput-object p2, p0, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$rNDBw-02jSdL0O9fv_r929EVVzo;->f$1:Landroid/hardware/radio/ProgramList$Chunk;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$rNDBw-02jSdL0O9fv_r929EVVzo;->f$0:Landroid/hardware/radio/TunerCallbackAdapter;

    iget-object v1, p0, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$rNDBw-02jSdL0O9fv_r929EVVzo;->f$1:Landroid/hardware/radio/ProgramList$Chunk;

    invoke-virtual {v0, v1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onProgramListUpdated$13$TunerCallbackAdapter(Landroid/hardware/radio/ProgramList$Chunk;)V

    return-void
.end method
