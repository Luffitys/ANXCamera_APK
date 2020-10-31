.class Landroid/accessibilityservice/AccessibilityService$2;
.super Ljava/lang/Object;
.source "AccessibilityService.java"

# interfaces
.implements Landroid/accessibilityservice/AccessibilityService$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accessibilityservice/AccessibilityService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accessibilityservice/AccessibilityService;


# direct methods
.method constructor <init>(Landroid/accessibilityservice/AccessibilityService;)V
    .registers 2

    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(ILandroid/os/IBinder;)V
    .registers 5

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    # setter for: Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I
    invoke-static {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->access$002(Landroid/accessibilityservice/AccessibilityService;I)I

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    # setter for: Landroid/accessibilityservice/AccessibilityService;->mWindowToken:Landroid/os/IBinder;
    invoke-static {v0, p2}, Landroid/accessibilityservice/AccessibilityService;->access$202(Landroid/accessibilityservice/AccessibilityService;Landroid/os/IBinder;)Landroid/os/IBinder;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/AccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerImpl;

    invoke-virtual {v0, p2}, Landroid/view/WindowManagerImpl;->setDefaultToken(Landroid/os/IBinder;)V

    return-void
.end method

.method public onAccessibilityButtonAvailabilityChanged(Z)V
    .registers 3

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    # invokes: Landroid/accessibilityservice/AccessibilityService;->onAccessibilityButtonAvailabilityChanged(Z)V
    invoke-static {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->access$800(Landroid/accessibilityservice/AccessibilityService;Z)V

    return-void
.end method

.method public onAccessibilityButtonClicked(I)V
    .registers 3

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    # invokes: Landroid/accessibilityservice/AccessibilityService;->onAccessibilityButtonClicked(I)V
    invoke-static {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->access$700(Landroid/accessibilityservice/AccessibilityService;I)V

    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onFingerprintCapturingGesturesChanged(Z)V
    .registers 3

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    # invokes: Landroid/accessibilityservice/AccessibilityService;->onFingerprintCapturingGesturesChanged(Z)V
    invoke-static {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->access$500(Landroid/accessibilityservice/AccessibilityService;Z)V

    return-void
.end method

.method public onFingerprintGesture(I)V
    .registers 3

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    # invokes: Landroid/accessibilityservice/AccessibilityService;->onFingerprintGesture(I)V
    invoke-static {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->access$600(Landroid/accessibilityservice/AccessibilityService;I)V

    return-void
.end method

.method public onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z
    .registers 3

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterrupt()V
    .registers 2

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->onInterrupt()V

    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onMagnificationChanged(ILandroid/graphics/Region;FFF)V
    .registers 12

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    # invokes: Landroid/accessibilityservice/AccessibilityService;->onMagnificationChanged(ILandroid/graphics/Region;FFF)V
    invoke-static/range {v0 .. v5}, Landroid/accessibilityservice/AccessibilityService;->access$300(Landroid/accessibilityservice/AccessibilityService;ILandroid/graphics/Region;FFF)V

    return-void
.end method

.method public onPerformGestureResult(IZ)V
    .registers 4

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0, p1, p2}, Landroid/accessibilityservice/AccessibilityService;->onPerformGestureResult(IZ)V

    return-void
.end method

.method public onServiceConnected()V
    .registers 2

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    # invokes: Landroid/accessibilityservice/AccessibilityService;->dispatchServiceConnected()V
    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->access$100(Landroid/accessibilityservice/AccessibilityService;)V

    return-void
.end method

.method public onSoftKeyboardShowModeChanged(I)V
    .registers 3

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    # invokes: Landroid/accessibilityservice/AccessibilityService;->onSoftKeyboardShowModeChanged(I)V
    invoke-static {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->access$400(Landroid/accessibilityservice/AccessibilityService;I)V

    return-void
.end method

.method public onSystemActionsChanged()V
    .registers 2

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->onSystemActionsChanged()V

    return-void
.end method
