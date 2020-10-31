.class Lorg/egret/plugin/mi/runtime/EgretLoader$GameEngineMethod;
.super Ljava/lang/Object;
.source "EgretLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/egret/plugin/mi/runtime/EgretLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameEngineMethod"
.end annotation


# static fields
.field public static final CALL_INTERFACE:Ljava/lang/String; = "callEgretInterface"

.field public static final ENABLE_INTERFACE:Ljava/lang/String; = "enableEgretRuntimeInterface"

.field public static final GET_VIEW:Ljava/lang/String; = "game_engine_get_view"

.field public static final INIT:Ljava/lang/String; = "game_engine_init"

.field public static final ON_PAUSE:Ljava/lang/String; = "game_engine_onPause"

.field public static final ON_RESUME:Ljava/lang/String; = "game_engine_onResume"

.field public static final SET_INTERFACE:Ljava/lang/String; = "setRuntimeInterfaceSet"

.field public static final SET_OPTIONS:Ljava/lang/String; = "game_engine_set_options"

.field public static final STOP:Ljava/lang/String; = "game_engine_onStop"


# instance fields
.field final synthetic this$0:Lorg/egret/plugin/mi/runtime/EgretLoader;


# direct methods
.method private constructor <init>(Lorg/egret/plugin/mi/runtime/EgretLoader;)V
    .registers 2

    iput-object p1, p0, Lorg/egret/plugin/mi/runtime/EgretLoader$GameEngineMethod;->this$0:Lorg/egret/plugin/mi/runtime/EgretLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
