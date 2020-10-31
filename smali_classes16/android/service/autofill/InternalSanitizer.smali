.class public abstract Landroid/service/autofill/InternalSanitizer;
.super Ljava/lang/Object;
.source "InternalSanitizer.java"

# interfaces
.implements Landroid/service/autofill/Sanitizer;
.implements Landroid/os/Parcelable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract sanitize(Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;
.end method
