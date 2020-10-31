.class public final synthetic Landroid/accessibilityservice/-$$Lambda$AccessibilityService$Tu7BpkB1mA_cnSrnZqwCCw4inNQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;

.field public final synthetic f$1:Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;


# direct methods
.method public synthetic constructor <init>(Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/accessibilityservice/-$$Lambda$AccessibilityService$Tu7BpkB1mA_cnSrnZqwCCw4inNQ;->f$0:Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;

    iput-object p2, p0, Landroid/accessibilityservice/-$$Lambda$AccessibilityService$Tu7BpkB1mA_cnSrnZqwCCw4inNQ;->f$1:Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/accessibilityservice/-$$Lambda$AccessibilityService$Tu7BpkB1mA_cnSrnZqwCCw4inNQ;->f$0:Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;

    iget-object v1, p0, Landroid/accessibilityservice/-$$Lambda$AccessibilityService$Tu7BpkB1mA_cnSrnZqwCCw4inNQ;->f$1:Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;

    invoke-static {v0, v1}, Landroid/accessibilityservice/AccessibilityService;->lambda$sendScreenshotSuccess$1(Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;)V

    return-void
.end method
