.class public final synthetic Landroid/view/accessibility/-$$Lambda$AccessibilityEvent$c6ikd5OkCnJv2aVsheVXIxBvSTk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Landroid/view/accessibility/-$$Lambda$AccessibilityEvent$c6ikd5OkCnJv2aVsheVXIxBvSTk;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/accessibility/-$$Lambda$AccessibilityEvent$c6ikd5OkCnJv2aVsheVXIxBvSTk;

    invoke-direct {v0}, Landroid/view/accessibility/-$$Lambda$AccessibilityEvent$c6ikd5OkCnJv2aVsheVXIxBvSTk;-><init>()V

    sput-object v0, Landroid/view/accessibility/-$$Lambda$AccessibilityEvent$c6ikd5OkCnJv2aVsheVXIxBvSTk;->INSTANCE:Landroid/view/accessibility/-$$Lambda$AccessibilityEvent$c6ikd5OkCnJv2aVsheVXIxBvSTk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->lambda$c6ikd5OkCnJv2aVsheVXIxBvSTk(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
