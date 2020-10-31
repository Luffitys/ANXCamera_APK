.class public final synthetic Lcom/android/internal/content/om/-$$Lambda$TnMimLdK-xwmEZLrRzFg7LG1Yfg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/content/om/-$$Lambda$TnMimLdK-xwmEZLrRzFg7LG1Yfg;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/content/om/-$$Lambda$TnMimLdK-xwmEZLrRzFg7LG1Yfg;

    invoke-direct {v0}, Lcom/android/internal/content/om/-$$Lambda$TnMimLdK-xwmEZLrRzFg7LG1Yfg;-><init>()V

    sput-object v0, Lcom/android/internal/content/om/-$$Lambda$TnMimLdK-xwmEZLrRzFg7LG1Yfg;->INSTANCE:Lcom/android/internal/content/om/-$$Lambda$TnMimLdK-xwmEZLrRzFg7LG1Yfg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lcom/android/internal/content/om/OverlayScanner;

    invoke-direct {v0}, Lcom/android/internal/content/om/OverlayScanner;-><init>()V

    return-object v0
.end method
