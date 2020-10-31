.class Lorg/egret/plugin/mi/runtime/EgretLoader$GameOptionName;
.super Ljava/lang/Object;
.source "EgretLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/egret/plugin/mi/runtime/EgretLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameOptionName"
.end annotation


# static fields
.field public static final EGRET_ROOT:Ljava/lang/String; = "egret.runtime.egretRoot"

.field public static final GAME_ID:Ljava/lang/String; = "egret.runtime.gameId"

.field public static final LOADER_TYPE:Ljava/lang/String; = "egret.runtime.libraryLoaderType"

.field public static final LOADER_URL:Ljava/lang/String; = "egret.runtime.loaderUrl"

.field public static final ORIENTATION:Ljava/lang/String; = "egret.runtime.screenOrientation"

.field public static final UPDATE_URL:Ljava/lang/String; = "egret.runtime.updateUrl"


# instance fields
.field final synthetic this$0:Lorg/egret/plugin/mi/runtime/EgretLoader;


# direct methods
.method private constructor <init>(Lorg/egret/plugin/mi/runtime/EgretLoader;)V
    .registers 2

    iput-object p1, p0, Lorg/egret/plugin/mi/runtime/EgretLoader$GameOptionName;->this$0:Lorg/egret/plugin/mi/runtime/EgretLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
