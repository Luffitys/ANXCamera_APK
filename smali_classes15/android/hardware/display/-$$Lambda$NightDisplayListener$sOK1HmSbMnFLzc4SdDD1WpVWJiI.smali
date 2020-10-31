.class public final synthetic Landroid/hardware/display/-$$Lambda$NightDisplayListener$sOK1HmSbMnFLzc4SdDD1WpVWJiI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/display/NightDisplayListener;

.field public final synthetic f$1:Landroid/hardware/display/NightDisplayListener$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/display/NightDisplayListener;Landroid/hardware/display/NightDisplayListener$Callback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/display/-$$Lambda$NightDisplayListener$sOK1HmSbMnFLzc4SdDD1WpVWJiI;->f$0:Landroid/hardware/display/NightDisplayListener;

    iput-object p2, p0, Landroid/hardware/display/-$$Lambda$NightDisplayListener$sOK1HmSbMnFLzc4SdDD1WpVWJiI;->f$1:Landroid/hardware/display/NightDisplayListener$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/hardware/display/-$$Lambda$NightDisplayListener$sOK1HmSbMnFLzc4SdDD1WpVWJiI;->f$0:Landroid/hardware/display/NightDisplayListener;

    iget-object v1, p0, Landroid/hardware/display/-$$Lambda$NightDisplayListener$sOK1HmSbMnFLzc4SdDD1WpVWJiI;->f$1:Landroid/hardware/display/NightDisplayListener$Callback;

    invoke-virtual {v0, v1}, Landroid/hardware/display/NightDisplayListener;->lambda$setCallback$0$NightDisplayListener(Landroid/hardware/display/NightDisplayListener$Callback;)V

    return-void
.end method
