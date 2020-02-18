.class public final synthetic Lcom/android/lens/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/libraries/lens/lenslite/StatusUpdateCallback;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/lens/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/lens/a;

    invoke-direct {v0}, Lcom/android/lens/a;-><init>()V

    sput-object v0, Lcom/android/lens/a;->INSTANCE:Lcom/android/lens/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onOobeStatusUpdated(I)V
    .locals 0

    invoke-static {p1}, Lcom/android/lens/LensAgent;->o(I)V

    return-void
.end method
