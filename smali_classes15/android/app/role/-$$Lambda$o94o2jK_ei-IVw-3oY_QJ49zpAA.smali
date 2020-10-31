.class public final synthetic Landroid/app/role/-$$Lambda$o94o2jK_ei-IVw-3oY_QJ49zpAA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/app/role/-$$Lambda$o94o2jK_ei-IVw-3oY_QJ49zpAA;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/role/-$$Lambda$o94o2jK_ei-IVw-3oY_QJ49zpAA;

    invoke-direct {v0}, Landroid/app/role/-$$Lambda$o94o2jK_ei-IVw-3oY_QJ49zpAA;-><init>()V

    sput-object v0, Landroid/app/role/-$$Lambda$o94o2jK_ei-IVw-3oY_QJ49zpAA;->INSTANCE:Landroid/app/role/-$$Lambda$o94o2jK_ei-IVw-3oY_QJ49zpAA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Landroid/app/role/OnRoleHoldersChangedListener;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/os/UserHandle;

    invoke-interface {p1, p2, p3}, Landroid/app/role/OnRoleHoldersChangedListener;->onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method
