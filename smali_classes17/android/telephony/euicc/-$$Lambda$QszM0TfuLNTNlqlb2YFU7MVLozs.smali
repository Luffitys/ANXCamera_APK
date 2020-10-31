.class public final synthetic Landroid/telephony/euicc/-$$Lambda$QszM0TfuLNTNlqlb2YFU7MVLozs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/telephony/euicc/-$$Lambda$QszM0TfuLNTNlqlb2YFU7MVLozs;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/euicc/-$$Lambda$QszM0TfuLNTNlqlb2YFU7MVLozs;

    invoke-direct {v0}, Landroid/telephony/euicc/-$$Lambda$QszM0TfuLNTNlqlb2YFU7MVLozs;-><init>()V

    sput-object v0, Landroid/telephony/euicc/-$$Lambda$QszM0TfuLNTNlqlb2YFU7MVLozs;->INSTANCE:Landroid/telephony/euicc/-$$Lambda$QszM0TfuLNTNlqlb2YFU7MVLozs;

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

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
