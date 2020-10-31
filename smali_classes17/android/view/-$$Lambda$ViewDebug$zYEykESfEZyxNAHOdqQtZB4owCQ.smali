.class public final synthetic Landroid/view/-$$Lambda$ViewDebug$zYEykESfEZyxNAHOdqQtZB4owCQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Landroid/view/-$$Lambda$ViewDebug$zYEykESfEZyxNAHOdqQtZB4owCQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/-$$Lambda$ViewDebug$zYEykESfEZyxNAHOdqQtZB4owCQ;

    invoke-direct {v0}, Landroid/view/-$$Lambda$ViewDebug$zYEykESfEZyxNAHOdqQtZB4owCQ;-><init>()V

    sput-object v0, Landroid/view/-$$Lambda$ViewDebug$zYEykESfEZyxNAHOdqQtZB4owCQ;->INSTANCE:Landroid/view/-$$Lambda$ViewDebug$zYEykESfEZyxNAHOdqQtZB4owCQ;

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

    invoke-static {p1}, Landroid/view/ViewDebug;->lambda$convertToPropertyInfos$9(I)[Landroid/view/ViewDebug$PropertyInfo;

    move-result-object p1

    return-object p1
.end method
