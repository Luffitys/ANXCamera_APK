.class final Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;
.super Ljava/lang/Object;
.source "CallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallerInfoAsyncQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CookieWrapper"
.end annotation


# instance fields
.field public cookie:Ljava/lang/Object;

.field public event:I

.field public geoDescription:Ljava/lang/String;

.field public listener:Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;

.field public number:Ljava/lang/String;

.field public subId:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/telecom/CallerInfoAsyncQuery$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;-><init>()V

    return-void
.end method
