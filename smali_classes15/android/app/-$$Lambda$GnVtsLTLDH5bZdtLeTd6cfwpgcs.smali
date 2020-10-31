.class public final synthetic Landroid/app/-$$Lambda$GnVtsLTLDH5bZdtLeTd6cfwpgcs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/app/-$$Lambda$GnVtsLTLDH5bZdtLeTd6cfwpgcs;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/-$$Lambda$GnVtsLTLDH5bZdtLeTd6cfwpgcs;

    invoke-direct {v0}, Landroid/app/-$$Lambda$GnVtsLTLDH5bZdtLeTd6cfwpgcs;-><init>()V

    sput-object v0, Landroid/app/-$$Lambda$GnVtsLTLDH5bZdtLeTd6cfwpgcs;->INSTANCE:Landroid/app/-$$Lambda$GnVtsLTLDH5bZdtLeTd6cfwpgcs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/app/UiAutomation$OnAccessibilityEventListener;

    check-cast p2, Landroid/view/accessibility/AccessibilityEvent;

    invoke-interface {p1, p2}, Landroid/app/UiAutomation$OnAccessibilityEventListener;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
