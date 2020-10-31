.class public final Lmiui/content/res/ThemeResources$MetaData;
.super Ljava/lang/Object;
.source "ThemeResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/res/ThemeResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "MetaData"
.end annotation


# instance fields
.field public mSupportFile:Z

.field public mSupportValue:Z

.field public mThemePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/content/res/ThemeResources$MetaData;->mThemePath:Ljava/lang/String;

    iput-boolean p2, p0, Lmiui/content/res/ThemeResources$MetaData;->mSupportValue:Z

    iput-boolean p3, p0, Lmiui/content/res/ThemeResources$MetaData;->mSupportFile:Z

    return-void
.end method
