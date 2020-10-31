.class public final synthetic Landroid/accessibilityservice/-$$Lambda$AccessibilityService$QPuf76fmbA3YdpMRuW3aotBDLhc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/accessibilityservice/-$$Lambda$AccessibilityService$QPuf76fmbA3YdpMRuW3aotBDLhc;->f$0:Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;

    iput p2, p0, Landroid/accessibilityservice/-$$Lambda$AccessibilityService$QPuf76fmbA3YdpMRuW3aotBDLhc;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/accessibilityservice/-$$Lambda$AccessibilityService$QPuf76fmbA3YdpMRuW3aotBDLhc;->f$0:Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;

    iget v1, p0, Landroid/accessibilityservice/-$$Lambda$AccessibilityService$QPuf76fmbA3YdpMRuW3aotBDLhc;->f$1:I

    invoke-static {v0, v1}, Landroid/accessibilityservice/AccessibilityService;->lambda$sendScreenshotFailure$2(Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;I)V

    return-void
.end method
