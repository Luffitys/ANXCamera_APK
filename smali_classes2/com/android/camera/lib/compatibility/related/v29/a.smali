.class public final synthetic Lcom/android/camera/lib/compatibility/related/v29/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntPredicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/lib/compatibility/related/v29/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/lib/compatibility/related/v29/a;

    invoke-direct {v0}, Lcom/android/camera/lib/compatibility/related/v29/a;-><init>()V

    sput-object v0, Lcom/android/camera/lib/compatibility/related/v29/a;->INSTANCE:Lcom/android/camera/lib/compatibility/related/v29/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 0

    invoke-static {p1}, Lcom/android/camera/lib/compatibility/related/v29/V29Utils;->m(I)Z

    move-result p0

    return p0
.end method
