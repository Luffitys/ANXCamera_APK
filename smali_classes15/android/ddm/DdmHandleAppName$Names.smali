.class public final Landroid/ddm/DdmHandleAppName$Names;
.super Ljava/lang/Object;
.source "DdmHandleAppName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ddm/DdmHandleAppName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Names"
.end annotation


# instance fields
.field private final mAppName:Ljava/lang/String;

.field private final mPkgName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/ddm/DdmHandleAppName$Names;->mAppName:Ljava/lang/String;

    iput-object p2, p0, Landroid/ddm/DdmHandleAppName$Names;->mPkgName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/ddm/DdmHandleAppName$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/ddm/DdmHandleAppName$Names;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/ddm/DdmHandleAppName$Names;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/ddm/DdmHandleAppName$Names;->mPkgName:Ljava/lang/String;

    return-object v0
.end method
