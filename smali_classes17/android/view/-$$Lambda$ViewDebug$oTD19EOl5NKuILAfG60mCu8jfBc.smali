.class public final synthetic Landroid/view/-$$Lambda$ViewDebug$oTD19EOl5NKuILAfG60mCu8jfBc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$ViewDebug$oTD19EOl5NKuILAfG60mCu8jfBc;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/view/-$$Lambda$ViewDebug$oTD19EOl5NKuILAfG60mCu8jfBc;->f$0:Ljava/lang/Class;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {v0, p1}, Landroid/view/ViewDebug;->lambda$convertToPropertyInfos$6(Ljava/lang/Class;Ljava/lang/reflect/Method;)Landroid/view/ViewDebug$PropertyInfo;

    move-result-object p1

    return-object p1
.end method
