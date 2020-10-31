.class public Landroid/app/MiuiStatusBarState;
.super Ljava/lang/Object;
.source "MiuiStatusBarState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;,
        Landroid/app/MiuiStatusBarState$StandardViewBuilder;
    }
.end annotation


# static fields
.field public static final ACTION_CLEAR_STATUS_BAR_STATE:Ljava/lang/String; = "action_clear_status_bar_state"

.field public static final ACTION_SET_STATUS_BAR_STATE:Ljava/lang/String; = "action_set_status_bar_state"

.field public static final KEY_STATUS_BAR_MINI_STATE:Ljava/lang/String; = "key_status_bar_mini_state"

.field public static final KEY_STATUS_BAR_PACKAGE_NAME:Ljava/lang/String; = "key_status_bar_package_name"

.field public static final KEY_STATUS_BAR_PRIORITY:Ljava/lang/String; = "key_status_bar_priority"

.field public static final KEY_STATUS_BAR_STANDARD_STATE:Ljava/lang/String; = "key_status_bar_standard_state"

.field public static final KEY_STATUS_BAR_TAG:Ljava/lang/String; = "key_status_bar_tag"

.field public static final PRIORITY_DEFAULT:I = 0x1

.field public static final PRIORITY_HIGH:I = 0x2

.field public static final PRIORITY_LOW:I = 0x0

.field public static final PRIORITY_MAX:I = 0x3

.field private static final SET_BACKGROUND_COLOR:Ljava/lang/String; = "setBackgroundColor"

.field private static final SET_GRAVITY:Ljava/lang/String; = "setGravity"

.field private static final SET_TEXT_COLOR:Ljava/lang/String; = "setTextColor"

.field private static final TAG:Ljava/lang/String; = "MiuiStatusBarState"

.field private static final sSetDrawableTint:Ljava/lang/reflect/Method;


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mMiniStateViews:Landroid/widget/RemoteViews;

.field private mPriority:I

.field private mStandardStateViews:Landroid/widget/RemoteViews;

.field private mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/widget/RemoteViews;

    const-string v2, "setDrawableTint"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Landroid/graphics/PorterDuff$Mode;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_22

    move-object v0, v1

    goto :goto_2c

    :catch_22
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiStatusBarState"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2c
    sput-object v0, Landroid/app/MiuiStatusBarState;->sSetDrawableTint:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/MiuiStatusBarState;->mTag:Ljava/lang/String;

    const/4 v0, 0x3

    if-gt p4, v0, :cond_d

    if-ltz p4, :cond_d

    iput p4, p0, Landroid/app/MiuiStatusBarState;->mPriority:I

    goto :goto_10

    :cond_d
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/MiuiStatusBarState;->mPriority:I

    :goto_10
    iput-object p3, p0, Landroid/app/MiuiStatusBarState;->mMiniStateViews:Landroid/widget/RemoteViews;

    iput-object p2, p0, Landroid/app/MiuiStatusBarState;->mStandardStateViews:Landroid/widget/RemoteViews;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;ILandroid/os/Bundle;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/MiuiStatusBarState;->mTag:Ljava/lang/String;

    const/4 v0, 0x3

    if-gt p4, v0, :cond_d

    if-ltz p4, :cond_d

    iput p4, p0, Landroid/app/MiuiStatusBarState;->mPriority:I

    goto :goto_10

    :cond_d
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/MiuiStatusBarState;->mPriority:I

    :goto_10
    iput-object p5, p0, Landroid/app/MiuiStatusBarState;->mBundle:Landroid/os/Bundle;

    iput-object p3, p0, Landroid/app/MiuiStatusBarState;->mMiniStateViews:Landroid/widget/RemoteViews;

    iput-object p2, p0, Landroid/app/MiuiStatusBarState;->mStandardStateViews:Landroid/widget/RemoteViews;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/reflect/Method;
    .registers 1

    sget-object v0, Landroid/app/MiuiStatusBarState;->sSetDrawableTint:Ljava/lang/reflect/Method;

    return-object v0
.end method


# virtual methods
.method public getTag(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/MiuiStatusBarState;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toBundle(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroid/app/MiuiStatusBarState;->mTag:Ljava/lang/String;

    const-string v2, "key_status_bar_tag"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Landroid/app/MiuiStatusBarState;->mPriority:I

    const-string v2, "key_status_bar_priority"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_status_bar_package_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/MiuiStatusBarState;->mMiniStateViews:Landroid/widget/RemoteViews;

    const-string v2, "key_status_bar_mini_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroid/app/MiuiStatusBarState;->mStandardStateViews:Landroid/widget/RemoteViews;

    const-string v2, "key_status_bar_standard_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroid/app/MiuiStatusBarState;->mBundle:Landroid/os/Bundle;

    const-string v2, "extra"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method
