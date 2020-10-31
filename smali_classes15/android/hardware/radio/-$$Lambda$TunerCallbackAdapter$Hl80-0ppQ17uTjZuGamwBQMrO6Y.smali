.class public final synthetic Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$Hl80-0ppQ17uTjZuGamwBQMrO6Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/radio/ProgramList$OnCloseListener;


# instance fields
.field public final synthetic f$0:Landroid/hardware/radio/TunerCallbackAdapter;

.field public final synthetic f$1:Landroid/hardware/radio/ProgramList;

.field public final synthetic f$2:Landroid/hardware/radio/ProgramList$OnCloseListener;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramList$OnCloseListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$Hl80-0ppQ17uTjZuGamwBQMrO6Y;->f$0:Landroid/hardware/radio/TunerCallbackAdapter;

    iput-object p2, p0, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$Hl80-0ppQ17uTjZuGamwBQMrO6Y;->f$1:Landroid/hardware/radio/ProgramList;

    iput-object p3, p0, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$Hl80-0ppQ17uTjZuGamwBQMrO6Y;->f$2:Landroid/hardware/radio/ProgramList$OnCloseListener;

    return-void
.end method


# virtual methods
.method public final onClose()V
    .registers 4

    iget-object v0, p0, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$Hl80-0ppQ17uTjZuGamwBQMrO6Y;->f$0:Landroid/hardware/radio/TunerCallbackAdapter;

    iget-object v1, p0, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$Hl80-0ppQ17uTjZuGamwBQMrO6Y;->f$1:Landroid/hardware/radio/ProgramList;

    iget-object v2, p0, Landroid/hardware/radio/-$$Lambda$TunerCallbackAdapter$Hl80-0ppQ17uTjZuGamwBQMrO6Y;->f$2:Landroid/hardware/radio/ProgramList$OnCloseListener;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$setProgramListObserver$0$TunerCallbackAdapter(Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramList$OnCloseListener;)V

    return-void
.end method
