.class public final synthetic Landroid/telecom/-$$Lambda$Log$PMgs-iYBck7KnOoPeH-SfbZtCRA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/telecom/-$$Lambda$Log$PMgs-iYBck7KnOoPeH-SfbZtCRA;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telecom/-$$Lambda$Log$PMgs-iYBck7KnOoPeH-SfbZtCRA;

    invoke-direct {v0}, Landroid/telecom/-$$Lambda$Log$PMgs-iYBck7KnOoPeH-SfbZtCRA;-><init>()V

    sput-object v0, Landroid/telecom/-$$Lambda$Log$PMgs-iYBck7KnOoPeH-SfbZtCRA;->INSTANCE:Landroid/telecom/-$$Lambda$Log$PMgs-iYBck7KnOoPeH-SfbZtCRA;

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

    invoke-static {p1}, Landroid/telecom/Log;->lambda$getPackageAbbreviation$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
