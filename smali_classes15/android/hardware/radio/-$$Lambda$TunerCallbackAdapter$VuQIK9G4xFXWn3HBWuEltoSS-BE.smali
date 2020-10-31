.class public final synthetic Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$VuQIK9G4xFXWn3HBWuEltoSS-BE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/radio/TunerCallbackAdapter;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/radio/TunerCallbackAdapter;Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$VuQIK9G4xFXWn3HBWuEltoSS-BE;->f$0:Landroid/hardware/radio/TunerCallbackAdapter;

    iput-object p2, p0, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$VuQIK9G4xFXWn3HBWuEltoSS-BE;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$VuQIK9G4xFXWn3HBWuEltoSS-BE;->f$0:Landroid/hardware/radio/TunerCallbackAdapter;

    iget-object v1, p0, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$VuQIK9G4xFXWn3HBWuEltoSS-BE;->f$1:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onParametersUpdated$14$TunerCallbackAdapter(Ljava/util/Map;)V

    return-void
.end method
