.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$SmsApplication$5KAxbm71Dll9xmT5zeXi0i27A10;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/telephony/-$$Lambda$SmsApplication$5KAxbm71Dll9xmT5zeXi0i27A10;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/telephony/-$$Lambda$SmsApplication$5KAxbm71Dll9xmT5zeXi0i27A10;

    invoke-direct {v0}, Lcom/android/internal/telephony/-$$Lambda$SmsApplication$5KAxbm71Dll9xmT5zeXi0i27A10;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/-$$Lambda$SmsApplication$5KAxbm71Dll9xmT5zeXi0i27A10;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$SmsApplication$5KAxbm71Dll9xmT5zeXi0i27A10;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication;->lambda$replacePreferredActivity$1(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method
