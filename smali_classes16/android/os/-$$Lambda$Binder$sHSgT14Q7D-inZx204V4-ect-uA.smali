.class public final synthetic Landroid/os/-$$Lambda$Binder$sHSgT14Q7D-inZx204V4-ect-uA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/os/BinderInternal$WorkSourceProvider;


# static fields
.field public static final synthetic INSTANCE:Landroid/os/-$$Lambda$Binder$sHSgT14Q7D-inZx204V4-ect-uA;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/-$$Lambda$Binder$sHSgT14Q7D-inZx204V4-ect-uA;

    invoke-direct {v0}, Landroid/os/-$$Lambda$Binder$sHSgT14Q7D-inZx204V4-ect-uA;-><init>()V

    sput-object v0, Landroid/os/-$$Lambda$Binder$sHSgT14Q7D-inZx204V4-ect-uA;->INSTANCE:Landroid/os/-$$Lambda$Binder$sHSgT14Q7D-inZx204V4-ect-uA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final resolveWorkSourceUid(I)I
    .registers 2

    invoke-static {p1}, Landroid/os/Binder;->lambda$static$1(I)I

    move-result p1

    return p1
.end method
