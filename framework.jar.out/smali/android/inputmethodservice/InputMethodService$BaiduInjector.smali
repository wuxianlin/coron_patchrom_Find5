.class Landroid/inputmethodservice/InputMethodService$BaiduInjector;
.super Ljava/lang/Object;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaiduInjector"
.end annotation


# static fields
.field static final ACTION_IME_CHANGED:Ljava/lang/String; = "android.intent.action.ime_changed"

.field static final EXTRA_IME_STATE:Ljava/lang/String; = "ime_state"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static broadcastImeHide(Landroid/inputmethodservice/InputMethodService;)V
    .locals 3
    .parameter "ims"

    .prologue
    .line 363
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ime_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ime_state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->sendBroadcast(Landroid/content/Intent;)V

    .line 366
    return-void
.end method

.method static broadcastImeShown(Landroid/inputmethodservice/InputMethodService;)V
    .locals 3
    .parameter "ims"

    .prologue
    .line 369
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ime_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 370
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ime_state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 371
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->sendBroadcast(Landroid/content/Intent;)V

    .line 372
    return-void
.end method

.method static finishActionModeIfStarted(Landroid/inputmethodservice/InputMethodService;)V
    .locals 2
    .parameter "ims"

    .prologue
    .line 354
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    instance-of v1, v1, Landroid/inputmethodservice/ExtractEditLayout;

    if-eqz v1, :cond_0

    .line 355
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    check-cast v0, Landroid/inputmethodservice/ExtractEditLayout;

    .line 356
    .local v0, extractEditLayout:Landroid/inputmethodservice/ExtractEditLayout;
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditLayout;->isActionModeStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditLayout;->finishActionMode()V

    .line 360
    .end local v0           #extractEditLayout:Landroid/inputmethodservice/ExtractEditLayout;
    :cond_0
    return-void
.end method
