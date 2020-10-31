.class public final synthetic Landroid/util/-$$Lambda$PNcWARaUCnqxo5KZVrKltn9O64M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/util/-$$Lambda$PNcWARaUCnqxo5KZVrKltn9O64M;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/util/-$$Lambda$PNcWARaUCnqxo5KZVrKltn9O64M;

    invoke-direct {v0}, Landroid/util/-$$Lambda$PNcWARaUCnqxo5KZVrKltn9O64M;-><init>()V

    sput-object v0, Landroid/util/-$$Lambda$PNcWARaUCnqxo5KZVrKltn9O64M;->INSTANCE:Landroid/util/-$$Lambda$PNcWARaUCnqxo5KZVrKltn9O64M;

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

    check-cast p1, Ljava/lang/StackTraceElement;

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
