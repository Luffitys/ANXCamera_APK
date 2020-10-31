.class public final synthetic Landroid/view/-$$Lambda$ViewDebug$nWDBN_NTdi-tDKEGiWZSUZui5DE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Landroid/view/-$$Lambda$ViewDebug$nWDBN_NTdi-tDKEGiWZSUZui5DE;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/-$$Lambda$ViewDebug$nWDBN_NTdi-tDKEGiWZSUZui5DE;

    invoke-direct {v0}, Landroid/view/-$$Lambda$ViewDebug$nWDBN_NTdi-tDKEGiWZSUZui5DE;-><init>()V

    sput-object v0, Landroid/view/-$$Lambda$ViewDebug$nWDBN_NTdi-tDKEGiWZSUZui5DE;->INSTANCE:Landroid/view/-$$Lambda$ViewDebug$nWDBN_NTdi-tDKEGiWZSUZui5DE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p1}, Landroid/view/ViewDebug;->lambda$convertToPropertyInfos$8(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
