.class public final synthetic Landroid/service/autofill/-$$Lambda$1t9tMtzuwhLlqE8N1Jp6U_FLHd4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Landroid/service/autofill/-$$Lambda$1t9tMtzuwhLlqE8N1Jp6U_FLHd4;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/autofill/-$$Lambda$1t9tMtzuwhLlqE8N1Jp6U_FLHd4;

    invoke-direct {v0}, Landroid/service/autofill/-$$Lambda$1t9tMtzuwhLlqE8N1Jp6U_FLHd4;-><init>()V

    sput-object v0, Landroid/service/autofill/-$$Lambda$1t9tMtzuwhLlqE8N1Jp6U_FLHd4;->INSTANCE:Landroid/service/autofill/-$$Lambda$1t9tMtzuwhLlqE8N1Jp6U_FLHd4;

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

    invoke-static {p1}, Landroid/service/autofill/FillRequest;->singleRequestFlagsToString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
